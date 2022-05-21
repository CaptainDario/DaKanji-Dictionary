import json
import xml.etree.cElementTree as ET
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
        for languageMeaning in self.meanings:
            if languageMeaning.language == language:
                languageMeaning.append_meaning(meaning)
                break
        else:
            self.meanings.append(LanguageMeanings(language=language, meanings=[meaning]))

    
    def toJSON(self):
        return json.dumps(self, default=lambda o: o.__dict__, 
            sort_keys=True, indent=4)

class EntryJSONEncoder(json.JSONEncoder):
    def default(self, o):
        if isinstance(o, set):
            return list(o)
        return o.__dict__


class JMDictProcessor:
    def __init__(self, file) -> None:
        self.file = file
        
    def XML_to_dict(self,) -> list():
        result = list()
        xml_file = ET.parse(self.file)
        for entry in xml_file.getroot():
            entryId = entry.find('ent_seq').text
            resultEntry = Entry()
            for kanji in entry.iter('keb'):
                resultEntry.kanjis.append(kanji.text)

            for reading in entry.iter('reb'):
                resultEntry.readings.append(reading.text)

            for sense in entry.iter('sense'):
                for part in sense:
                    if part.tag=="pos":
                        resultEntry.part_of_speech.add(part.text)
                    if part.tag == "gloss":
                        if part.text != None:
                            resultEntry.parse_meaning(part.get('{http://www.w3.org/XML/1998/namespace}lang'), part.text)

            result.append(resultEntry)
        return result

class JMEdictProcessor:
    def __init__(self, file) -> None:
        self.file = file

    def XML_to_dict(self,) -> list():
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
                        if part.text != None:
                            result_entry.parse_meaning('eng', part.text)

            result.append(result_entry)
        return result

if __name__ == "__main__":
    JMdictFile = open('inputFiles/JMdict/JMdict', 'r', encoding="utf-8")
    JMnedictFile = open('inputFiles/JMdict/JMnedict.xml', 'r', encoding="utf-8")
    jmdictProcessor = JMDictProcessor(JMdictFile)
    JMdict = jmdictProcessor.XML_to_dict()

    jmEdictProcessor = JMEdictProcessor(JMnedictFile)
    JMnedict = jmEdictProcessor.XML_to_dict()

    mergedDicts = JMdict + JMnedict

    out_file = open("mergedDicts.json", "w", encoding="utf-8")
    json.dump(mergedDicts, out_file, cls=EntryJSONEncoder, sort_keys=True, indent=4)

    out_file.close()

    # print(get_size(result))
    pass
