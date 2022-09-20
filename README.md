# DaKanji-Dictionary

The repository to build and store the dictionary files for DaKanji.

## Setup

### Requirements

* python with all dependiencies in `requirements.txt` installed
* dart

First download the necessary dictionary files

* [JMDict](https://www.edrdg.org/jmdict/j_jmdict.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo//JMdict.gz)
* [KanjiDic](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project) or [direct download](http://www.edrdg.org/kanjidic/kanjidic2.xml.gz)
* [ENAMDICT](https://www.edrdg.org/enamdict/enamdict_doc.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo/JMnedict.xml.gz)
* [KanjiVG](https://github.com/KanjiVG/kanjivg/releases/latest)

and place them in the `inputFiles directory`.
Your folder should look like that

* JMdict
  * JMdict
  * JMnedict.xml
* kanjidic2
  * kanjidic2.xml
* kanjiVG
  * 0f9a8.svg
  * 0f9ab.svg
  * ...

Now Run the python Scripts

* `utils/database_entries_creator/dict_entry_details_creator/kanjidic2_loaded.py`
* `utils/database_entries_creator/kanjivg_preprocessor/main.py`
* `utils/database_entries_creator/jmdict_enamdict_merger/main.py`

Finally, run

`dart database_builder/example/database_builder_example.dart`

## Usage

After building the dictionary it can be used by including
`import 'package:database_builder/database_builder.dart';` in your dart app.
