from dataclasses import dataclass, field
import xml.etree.ElementTree as ET
import orjson

@dataclass
class LanguageMeanings():
    language: str
    meanings: list[str]

    def append_meaning(self, meaning: str):
        self.meanings.append(meaning)

@dataclass
class Entry:
    kanjis: list[str] = field(default_factory=list)
    readings: list[str] = field(default_factory=list)
    part_of_speech: set[str] = field(default_factory=set)
    meanings: list[LanguageMeanings] = field(default_factory=list)

    def parse_meaning(self, language, meaning):
        for language_meaning in self.meanings:
            if language_meaning.language == language:
                language_meaning.append_meaning(meaning)
                break
        else:
            self.meanings.append(LanguageMeanings(language=language, meanings=[meaning]))


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

def default(obj):
    if isinstance(obj, set):
        return list(obj)
    return obj

def dict_process(input, Dict_porcessor, output):
    dict_file = open(input, 'r', encoding="utf-8")
    dict_processor = Dict_porcessor(dict_file)
    processed_dict = dict_processor.xml_to_dict()
    out_file = open(output, "wb")
    json_out = orjson.dumps(processed_dict, default=default, option=orjson.OPT_INDENT_2)
    out_file.write(json_out)
    out_file.close()

def jmdict_process():
    dict_process('inputFiles/JMdict/JMdict', JMDictProcessor, "partiallyProcessedFiles/JMdict/jmdict.json")
    print("Jmdict done")

def jmnedict_process():
    dict_process('inputFiles/JMdict/JMnedict.xml', JMEdictProcessor, "partiallyProcessedFiles/JMdict/jmnedict.json")
    print("JMnedict done")

def execute():
    jmdict_process()
    jmnedict_process()

if __name__ == "__main__":
    execute()
