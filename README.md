# DaKanji-Dictionary

The repository to build and store the dictionary files for DaKanji.

## Setup

You can either download the latest release from the [releases page](https://github.com/CaptainDario/DaKanji-Dictionary/releases), clone this repo and then directly jump to [Usage](#usage) or

### Building from source

First install the necessary requirements:

* python with all dependiencies in `requirements.txt` installed
  * Assure Cairo is installed and on path for cairocffi
* dart

First download the necessary dictionary files

* [JMDict](https://www.edrdg.org/jmdict/j_jmdict.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo//JMdict.gz)
* [KanjiDic](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project) or [direct download](http://www.edrdg.org/kanjidic/kanjidic2.xml.gz)
* [ENAMDICT](https://www.edrdg.org/enamdict/enamdict_doc.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo/JMnedict.xml.gz)
* [KanjiVG](https://github.com/KanjiVG/kanjivg/releases/latest) (Download the `kanjivg-xxx-all.zip`)

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

After building / downloading the dictionary it can be used by including
`import 'package:database_builder/database_builder.dart';` in your dart app.

## Credits and additional information
