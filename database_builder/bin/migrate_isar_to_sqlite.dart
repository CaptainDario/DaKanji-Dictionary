import 'dart:ffi';
import 'dart:io';
import 'package:isar_community/isar.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:database_builder/database_builder.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) async {
  print('--- Starting Migration Script ---');
  
  // Use RepoPathManager to find the output directory
  final outputDir = RepoPathManager.getOutputFilesPath();
  final isarName = "dictionary";
  final sqlitePath = p.join(outputDir, 'migration.sqlite');

  final languages = ["eng", "ger", "rus", "chi", "ita", "fre", "spa", "pol"];

  print('Opening Isar database: $isarName in $outputDir');
  
  Isar isar;
  try {
    String binaryPathWoExt = p.join(
      RepoPathManager.getRepoDirectory().absolute.path,
      'database_builder',
      'example',
      'libisar',
    );
    Isar.initializeIsarCore(libraries: {
      Abi.macosArm64: '$binaryPathWoExt.dylib',
      Abi.macosX64  : '$binaryPathWoExt.dylib',
    });
    isar = await Isar.open(
      [JMdictSchema, Kanjidic2Schema, KanjiSVGSchema],
      name: isarName,
      directory: outputDir,
    );
  } catch (e) {
    print('Error opening Isar: $e');
    return;
  }

  print('Isar opened successfully.');

  print('Creating SQLite database at: $sqlitePath');
  if (File(sqlitePath).existsSync()) {
    File(sqlitePath).deleteSync();
  }
  
  final db = sqlite3.open(sqlitePath);
  print('SQLite opened successfully.');

  // Create table with columns for each language
  final langColumns = languages.map((lang) => 'def_$lang TEXT').join(',\n      ');
  db.execute('''
    CREATE TABLE migration (
      id INTEGER PRIMARY KEY,
      term TEXT,
      reading TEXT,
      $langColumns
    );
  ''');

  final placeholders = List.filled(languages.length, '?').join(', ');
  final stmt = db.prepare('INSERT INTO migration (id, term, reading, ${languages.map((l) => "def_$l").join(", ")}) VALUES (?, ?, ?, $placeholders)');

  final count = isar.jmdict.countSync();
  print('Found $count JMdict entries. Starting migration...');

  final allEntries = isar.jmdict.where().findAllSync();
  
  print('Starting SQL transaction...');
  db.execute('BEGIN TRANSACTION');
  
  int migratedCount = 0;
  for (final entry in allEntries) {
    final id = entry.id;
    final term = entry.kanjis.isNotEmpty ? entry.kanjis[0] : entry.readings[0];
    final reading = entry.readings[0];
    
    final List<Object?> rowValues = [id, term, reading];

    for (final lang in languages) {
      String definitions = '';
      final langMeanings = entry.meanings.where((m) => m.language == lang);
      if (langMeanings.isNotEmpty) {
        definitions = langMeanings
            .map((lm) => lm.meanings.map((attr) => attr.attributes.join(', ')).join('; '))
            .join(' | ');
      }
      rowValues.add(definitions);
    }

    stmt.execute(rowValues);
    
    migratedCount++;
    if (migratedCount % 1000 == 0) {
      stdout.write('\rMigrated $migratedCount / $count entries...');
    }
  }
  
  db.execute('COMMIT');
  stmt.dispose();
  
  print('\nMigration complete! Total entries migrated: $migratedCount');
  print('SQLite database is located at: $sqlitePath');

  db.dispose();
  await isar.close();
  print('--- Script Finished ---');
}
