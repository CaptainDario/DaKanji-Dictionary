import 'dart:io';

import 'package:isar/isar.dart';
import 'package:kana_kit/kana_kit.dart';
import 'package:path/path.dart' as p;

import 'package:database_builder/database_builder.dart';



/// Renames and moves all audio files to the correct location.
/// Additionally creates a 
void processAudios(Isar isar) {

  // get all audio files
  List<File> audioFilePaths = Directory(
    p.join(
      RepoPathManager.getInputFilesPath(),
      "japanese-vocabulary-pronunciation-audio-master",
      "lib",
      "mp3"
    )
  ).listSync()
  .map((e) => File(e.absolute.path)).toList();

  // create output folder if non-existent
  Directory(
    p.join(RepoPathManager.getOutputFilesPath(), "audios")
  ).createSync(recursive: true);

  int cnt = 0;
  RegExp re = RegExp(r"(.+)【(.+)】");
  KanaKit k = KanaKit(
    config: KanaKitConfig(passRomaji: true, passKanji: true, upcaseKatakana: false)
  );
  for (File file in audioFilePaths) {
    //example name: 裁く【さばく】.mp3
    RegExpMatch match = re.firstMatch(
      file.uri.pathSegments.last.replaceAll("〜", "").replaceAll("です", "")
    )!;
    String kanji = match.group(1)!;
    String kana = k.toHiragana(k.toKatakana(match.group(2)!));
    file.copy(p.join(RepoPathManager.getOutputFilesPath(), "audios", "$cnt.mp3"));

    List<JMdict> results = isar.jmdict.where()
      .kanjiIndexesElementEqualTo(k.toHiragana(kanji))
        .or()
      .kanjiIndexesElementEqualTo(k.toHiragana(kanji).replaceAll("する", ""))
        .filter()
      .hiraganasElementEqualTo(kana)
        .or()
      .hiraganasElementEqualTo(kana.replaceAll("する", ""))
    .findAllSync();

    if(results.isNotEmpty){
      isar.writeTxnSync(() {
        for (var result in results) {
          isar.jmdict.putSync(
            result..audio = cnt
          );
        }
      });
      cnt++;
    }
    else{
      print("No JMdict entry found for sound: ${file.uri.pathSegments.last}: $kanji, $kana");
    }
  }
}