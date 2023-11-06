# DaKanji-Dictionary

The repository to build and store the dictionary files for DaKanji.

## Setup

You can either download the latest release from the [releases page](https://github.com/CaptainDario/DaKanji-Dictionary/releases), clone this repo and then directly jump to [Usage](#usage) or

### Building from source

First install the necessary requirements:

* a python environment with all dependiencies in `requirements.txt` installed
  * Assure Cairo is installed and on path for cairocffi
  * Assure this environemnt is set as current environment (python3 defaults to this env.)
* dart
* MeCab with ipadic
  * [Windows](http://taku910.github.io/mecab/#download)
  * MacOS - homebrew:
    * `brew install mecab`
    * `brew install mecab-ipadic`

Additionally, the isar binaries for your platform are requried.
They can be downloaded [here](https://github.com/isar/isar/releases) (make sure that the isar library version matches your platform and the version in `pubspec.yaml`). After downloading the library, copy it to `database_builder/example/libisar.{dylilb|so|dll}`.

Now download the necessary dictionary files

* [Pitch accent data](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/raw/accents.txt)
* [Wanikani audio files](https://github.com/tofugu/japanese-vocabulary-pronunciation-audio)
  * Releases -> latest
* JLPT data comes from [Jonath wallner](http://www.tanos.co.uk/jlpt/) and is curated by [stephenmk](https://github.com/stephenmk/yomichan-jlpt-vocab)
  * Releases -> latest
* [JMDict](https://www.edrdg.org/jmdict/j_jmdict.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo//JMdict.gz)
* [KanjiDic2](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project) or [direct download](http://www.edrdg.org/kanjidic/kanjidic2.xml.gz)
* Kanjium
  * [Antonyms](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/antonyms.txt)
  * [Kanjidict](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/kanjidict.txt)
  * [Look alikes](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/lookalikes.txt)
  * [particles](https://raw.githubusercontent.com/mifunetoshiro/kanjium/master/data/source_files/raw/particles.txt)
  * [Synonyms](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/synonyms.txt)
* [KanjiVG](https://github.com/KanjiVG/kanjivg/releases/latest) (Download the `kanjivg-xxx-all.zip`)
* [KLC order](https://github.com/vadasambar/kanji_order/blob/master/database.js)
* [Tatoeba](https://tatoeba.org/en/downloads)
  * Weekly exports -> All languages -> sentences.csv
  * Links -> links.csv
* [Radkfile / Kradfile](https://github.com/scriptin/jmdict-simplified)
  * Releases -> latest
* Currently unused
  * [ENAMDICT](https://www.edrdg.org/enamdict/enamdict_doc.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo/JMnedict.xml.gz)

and place them in the `inputFiles directory`.
Your folder should look like that

* inputFiles
  * japanese-vocabulary-pronunciation-audio-master
    * lib
      * mp3
      * ogg
  * jlpt
    * n_{1-5}.csv
  * JMdict
    * JMdict
    * JMnedict.xml
  * kanjidic2
    * kanjidic2.xml
  * kanjium
    * antonyms.txt
    * kanjidict.txt
    * lookalikes.txt
    * synonyms.txt
  * kanjiVG
    * 0f9a8.svg
    * 0f9ab.svg
    * ...
  * klc
    * database.js
  * tatoeba
    * links.csv
    * sentences.csv
  * accents.txt
  * radkfile-x.x.x.json
  * kradfile-x.x.x.json

Now Run those commands (your current python environment needs to have all requirements from `requirments.txt` installed)

* `python utils/database_entries_creator/dict_entry_details_creator/kanjidic2_loader.py`
* `python utils/database_entries_creator/kanjivg_preprocessor/main.py`
* `python utils/database_entries_creator/jmdict_enamdict_merger/main.py`
* ASSURE MeCab is installed in your default python environment
* `cd database_builder`
* `dart run build_runner build`
* `dart example/database_builder_example.dart`

## Usage

After building / downloading the dictionary it can be used by including
`import 'package:database_builder/database_builder.dart';` in your dart app.

## Credits and additional information

* Databases:
  * [KanjiVG](https://kanjivg.tagaini.net/)
  * [Kanjidic 2](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project)
  * [JMDict](https://www.edrdg.org/enamdict/enamdict_doc.html)
  * [ENAMDICT](https://www.edrdg.org/enamdict/enamdict_doc.html)
  * [Tatoeba](https://tatoeba.org/en/)
