from __future__ import annotations

from dataclasses import dataclass, field
# import xml.etree.ElementTree as ET
import lxml.etree as ET
import orjson
import wordfreq


@dataclass
class LanguageMeanings():
    language: str
    meanings: list[str]

    def append_meaning(self, meaning: str):
        if meaning not in self.meanings:
            self.meanings.append(meaning)


@dataclass
class Entry:
    ent_seq: int = 0
    kanjis: list[str] = field(default_factory=list)
    readings: list[str] = field(default_factory=list)
    part_of_speech: list[str] = field(default_factory=list)
    meanings: list[LanguageMeanings] = field(default_factory=list)

    def parse_meaning(self, language, meaning):
        """ Parses the given meaning with the language `language` into a LanguageMeanings
            object and appends it to the meanings list.
        
        Warning: Deprecated for JMDict

        Args:
            language : The langauge of the meaning
            meaning  : The meaning itself
        """

        for language_meaning in self.meanings:
            if language_meaning.language == language:
                language_meaning.append_meaning(meaning)
                break
        else:
            self.meanings.append(LanguageMeanings(
                language=language, meanings=[meaning]))


@dataclass
class JMDictEntry(Entry):
    frequency: float = 0.0  # 0.0 - smallest, 10.0 - highest
    fld: list[str] = field(default_factory=list)
    dial: list[str] = field(default_factory=list)
    xref: list[int] = field(default_factory=list)
    re_inf: list[int] = field(default_factory=list)


class JMDictProcessor:
    def __init__(self, file) -> None:
        self.file = file

    def xml_to_dict(self,) -> list():
        result = list()
        xml_file = ET.parse(self.file)  # type: ET.ElementTree
        for entry in xml_file.getroot():
            result_entry = JMDictEntry()
            for ent_seq in entry.iter("ent_seq"):
                result_entry.ent_seq = int(ent_seq.text)
            for kanji in entry.iter('keb'):
                result_entry.kanjis.append(kanji.text)
                result_entry.frequency = max(
                    result_entry.frequency, wordfreq.zipf_frequency(kanji.text, 'ja'))

            for reading in entry.iter('reb'):
                result_entry.readings.append(reading.text)
                if len(result_entry.kanjis) <= 0:
                    result_entry.frequency = max(
                        result_entry.frequency, wordfreq.zipf_frequency(reading.text, 'ja'))

            for sense in entry.iter('sense'):
                for part in sense:
                    if part.tag == "pos":
                        result_entry.part_of_speech.add(part.text)
                    if part.tag == "gloss":
                        if part.text is not None:
                            result_entry.parse_meaning(
                                part.get('{http://www.w3.org/XML/1998/namespace}lang'), part.text)
            for fld in entry.iter("field"):
                result_entry.fld.append(fld.text)
            for dial in entry.iter("dial"):
                result_entry.dial.append(dial.text)
            for xref in entry.iter("xref"):
                result_entry.xref.append(xref.text)
            for re_inf in entry.iter("re_inf"):
                result_entry.re_inf.append(re_inf.text)

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
            for ent_seq in entry.iter("ent_seq"):
                result_entry.ent_seq = int(ent_seq.text)
            for kanji in entry.iter('keb'):
                result_entry.kanjis.append(kanji.text)

            for reading in entry.iter('reb'):
                result_entry.readings.append(reading.text)

            for sense in entry.iter('trans'):
                for part in sense:
                    if part.tag == "name_type":
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
    json_out = orjson.dumps(
        processed_dict, default=default, option=orjson.OPT_INDENT_2)
    out_file.write(json_out)
    out_file.close()


def jmdict_process():
    dict_process('inputFiles/JMdict/JMdict', JMDictProcessor,
                 "partiallyProcessedFiles/JMdict/jmdict.json")
    print("Jmdict done")


def jmnedict_process():
    dict_process('inputFiles/JMdict/JMnedict.xml', JMEdictProcessor,
                 "partiallyProcessedFiles/JMdict/jmnedict.json")
    print("JMnedict done")


def execute():
    jmdict_process()
    jmnedict_process()


if __name__ == "__main__":
    execute()
