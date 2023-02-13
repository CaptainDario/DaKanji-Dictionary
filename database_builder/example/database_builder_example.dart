import 'package:database_builder/src/tatoeba_to_isar/data_classes.dart';
import 'package:isar/isar.dart';

import 'package:database_builder/database_builder.dart';



void main() async {

  

  
  final isar = await Isar.open(
      [
        JMdictSchema, 
        JMNEdictSchema,
        Kanjidic2Schema,
        KanjiSVGSchema,
        TatoebaSchema
      ],
      name: "dictionary",
      directory: RepoPathManager.getOutputFilesPath());
  /*
  await jmEnamAndDictToIsar(isar);
  print("jmenam done");
  await kanjidic2ToIsar(isar);
  print("kanjidic2 done");
  await kanjiVGToIsar(isar);
  print("kanjiVg done");
  */
  await tatoebaToIsar(isar);
  print("Tatoeba done");

  isar.close();
  print("ALL FINISHED");
  return;
  

  

}
