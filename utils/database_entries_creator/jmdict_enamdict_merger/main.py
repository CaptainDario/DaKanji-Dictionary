import json
import xml.etree.ElementTree as ET
from dataclasses import dataclass

@dataclass
class LanguageMeanings:
    language: str
    meanings: list

    def append_meaning(self, meaning: str):
        self.meanings.append(meaning)

@dataclass
class Entry:
    def __init__(self) -> None:
        self.kanjis = list()
        self.readings = list()
        self.part_of_speech = set()
        self.meanings = list()

    def parse_meaning(self, language, meaning):
        for language_meaning in self.meanings:
            if language_meaning.language == language:
                language_meaning.append_meaning(meaning)
                break
        else:
            self.meanings.append(LanguageMeanings(language=language, meanings=[meaning]))


class EntryJSONEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, set):
            return list(o)
        return o.__dict__


class JMDictProcessor:
    def __init__(self, file) -> None:
        self.file = file

    def xml_to_dict(self,) -> list():
        result = list()
        xml_file = ET.parse(self.file)
        for entry in xml_file.getroot():
            result_entry = Entry()
            for kanji in entry.iter('keb'):
                result_entry.kanjis.append(kanji.text)

            for reading in entry.iter('reb'):
                result_entry.readings.append(reading.text)

            for sense in entry.iter('sense'):
                for part in sense:
                    if part.tag=="pos":
                        result_entry.part_of_speech.add(part.text)
                    if part.tag == "gloss":
                        if part.text is not None:
                            result_entry.parse_meaning(part.get('{http://www.w3.org/XML/1998/namespace}lang'), part.text)

            result.append(result_entry)
        return result

class JMEdictProcessor:
    def __init__(self, file) -> None:
        self.file = file

    def xml_to_dict(self,) -> list():
        result = list()
        xml_file = ET.parse(self.file)
        for entry in xml_file.getroot():
            result_entry = Entry()
            for kanji in entry.iter('keb'):
                result_entry.kanjis.append(kanji.text)

            for reading in entry.iter('reb'):
                result_entry.readings.append(reading.text)

            for sense in entry.iter('trans'):
                for part in sense:
                    if part.tag=="name_type":
                        result_entry.part_of_speech.add(part.text)
                    if part.tag == "trans_det":
                        if part.text is not None:
                            result_entry.parse_meaning('eng', part.text)

            result.append(result_entry)
        return result

if __name__ == "__main__":
    JMdictFile = open('inputFiles/JMdict/JMdict', 'r', encoding="utf-8")
    JMnedictFile = open('inputFiles/JMdict/JMnedict.xml', 'r', encoding="utf-8")
    jmdictProcessor = JMDictProcessor(JMdictFile)
    JMdict = jmdictProcessor.xml_to_dict()

    jmEdictProcessor = JMEdictProcessor(JMnedictFile)
    JMnedict = jmEdictProcessor.xml_to_dict()

    mergedDicts = JMdict + JMnedict

    out_file = open("partiallyProcessedFiles/JMdict/mergedDicts.json", "w", encoding="utf-8")
    json.dump(mergedDicts, out_file, cls=EntryJSONEncoder, sort_keys=True, indent=4)

    out_file.close()

    # print(get_size(result))
