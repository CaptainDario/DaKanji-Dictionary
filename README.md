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

First download the necessary dictionary files

* [JMDict](https://www.edrdg.org/jmdict/j_jmdict.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo//JMdict.gz)
* [KanjiDic](http://www.edrdg.org/wiki/index.php/KANJIDIC_Project) or [direct download](http://www.edrdg.org/kanjidic/kanjidic2.xml.gz)
* [ENAMDICT](https://www.edrdg.org/enamdict/enamdict_doc.html) or [direct download](http://ftp.edrdg.org/pub/Nihongo/JMnedict.xml.gz)
* [KanjiVG](https://github.com/KanjiVG/kanjivg/releases/latest) (Download the `kanjivg-xxx-all.zip`)
* [Tatoeba](https://tatoeba.org/en/downloads)
  * Weekly exports -> All languages -> sentences.csv
  * Links -> links.csv
* [Radkfile simplified](https://github.com/scriptin/jmdict-simplified)
  * Releases -> latest
* [Wanikani audio files](https://github.com/tofugu/japanese-vocabulary-pronunciation-audio)
  * Releases -> latest
* [Pitch accent data](https://github.com/mifunetoshiro/kanjium/blob/master/data/source_files/raw/accents.txt)
* JLPT data comes from [Jonath wallner](http://www.tanos.co.uk/jlpt/) and is curated by [stephenmk](https://github.com/stephenmk/yomichan-jlpt-vocab)
  * Releases -> latest

and place them in the `inputFiles directory`.
Your folder should look like that

* inputFiles
  * accents.txt
  * japanese-vocabulary-pronunciation-audio-master
    * lib
      * mp3
      * ogg
  * jlpt
    * index.json
    * term_meta_bank_{1-4}.json
  * JMdict
    * JMdict
    * JMnedict.xml
  * kanjidic2
    * kanjidic2.xml
  * kanjiVG
    * 0f9a8.svg
    * 0f9ab.svg
    * ...  
  * radkfile-x.x.x.json
  * kradfile-x.x.x.json
  * tatoeba
    * links.csv
    * sentences.csv

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
