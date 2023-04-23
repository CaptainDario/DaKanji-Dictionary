from __future__ import annotations
import sys

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

    # general elements
    frequency: float = 0.0  # 0.0 - smallest, 10.0 - highest

    # kanji related elements
    k_inf: list[str] = field(default_factory=list)

    # reading related elements
    re_restr: list[int] = field(default_factory=list) # index of re_restr of k_ele
    re_inf: list[int] = field(default_factory=list)

    # senses related elements
    stagk:   list[int] = field(default_factory=list)
    stagr:   list[int] = field(default_factory=list)
    xref:    list[int] = field(default_factory=list)
    ant:     list[int] = field(default_factory=list)
    pos:     list[str] = field(default_factory=list)
    fld:     list[str] = field(default_factory=list)
    misc:    list[str] = field(default_factory=list)
    lsource: list[str] = field(default_factory=list)
    dial:    list[str] = field(default_factory=list)
    pri:     list[str] = field(default_factory=list)
    s_inf:   list[str] = field(default_factory=list)

    

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

            # kanji /reading related elements
            for k_ele in entry.iter('k_ele'):

                keb = k_ele.find('keb').text
                result_entry.kanjis.append(keb)
                result_entry.frequency = max(
                    result_entry.frequency,
                    wordfreq.zipf_frequency(keb, 'ja')
                )

                k_inf = list(map(lambda k : k.text, k_ele.iter('ke_inf')))
                result_entry.k_inf.append(k_inf)

            # reading related elements
            for r_ele in entry.iter('r_ele'):
                result_entry.readings.append(r_ele.find('reb').text)
                if len(result_entry.kanjis) <= 0:
                    result_entry.frequency = max(
                        result_entry.frequency, wordfreq.zipf_frequency(r_ele.find('reb').text, 'ja'))
                    
                re_inf = list(map(lambda r : r.text, r_ele.iter('re_inf')))
                result_entry.re_inf.append(None if re_inf == [] else "⬜".join(re_inf))

                re_restr = list(map(lambda r : r.text, r_ele.iter('re_restr')))
                result_entry.re_restr.append(None if re_restr == [] else "⬜".join(re_restr))

            # senses related elements
            meanings_map = {}
            for sense in entry.iter('sense'):

                glosses_join = []
                for gloss in sense.iter('gloss'):
                    lang = gloss.get('{http://www.w3.org/XML/1998/namespace}lang')
                    if(lang not in meanings_map.keys()):
                        meanings_map[lang] = []
                    if(gloss.text is not None):
                        glosses_join.append(gloss.text)
                meanings_map[lang].append("⬜".join(glosses_join))

                stagk = list(map(lambda e : e.text, sense.iter('stagk')))
                result_entry.stagk.append(None if stagk == [] else "⬜".join(stagk))

                stagr = list(map(lambda e : e.text, sense.iter('stagr')))
                result_entry.stagr.append(None if stagr == [] else "⬜".join(stagr))

                xref = list(map(lambda e : e.text, sense.iter('xref')))
                result_entry.xref.append(None if xref == [] else "⬜".join(xref))

                ant = list(map(lambda e : e.text, sense.iter('ant')))
                result_entry.ant.append(None if ant == [] else "⬜".join(ant))

                pos = list(map(lambda e : e.text, sense.iter('pos')))
                result_entry.pos.append(None if pos == [] else "⬜".join(pos))
                
                fld = list(map(lambda e : e.text, sense.iter('field')))
                result_entry.fld.append(None if fld == [] else "⬜".join(fld))

                lsource = list(map(lambda e : e.text, [x for x in sense.iter('lsource') if x.text is not None]))
                result_entry.lsource.append(None if lsource == [] else "⬜".join(lsource))

                dial = list(map(lambda e : e.text, sense.iter('dial')))
                result_entry.dial.append(None if dial == [] else "⬜".join(dial)) 

                s_inf = list(map(lambda e : e.text, sense.iter('s_inf')))
                result_entry.s_inf.append(None if s_inf == [] else "⬜".join(s_inf))                

            for lang, meanings in meanings_map.items():
                meaning = LanguageMeanings(language=lang, meanings=meanings)
                result_entry.meanings.append(meaning)

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
                        result_entry.part_of_speech.append(part.text)
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
