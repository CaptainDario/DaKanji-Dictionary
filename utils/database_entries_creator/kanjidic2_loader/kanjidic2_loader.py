from __future__ import annotations

import json
import csv
# import prettyprinter as pp
from dataclasses import dataclass, field
import xml.etree.ElementTree as ET
import dataclasses
import orjson

@dataclass
class JIS:
    encoding: str
    value: str

@dataclass
class Reading:
    r_type: str
    value: str

@dataclass
class Meaning:
    language: str
    meaning: str

@dataclass
class Entry:
    literal: str = ""
    grade: int = -1
    variants: list[JIS] = field(default_factory=list)
    frequency: int = -1
    stroke_count: int = -1
    jlpt_old: int = -1
    jlpt_new: int = -1
    klc: int = -1
    wanikani: int = -1
    rtk_old: int = -1
    rtk_new: int = -1
    kanken: float = -1.0
    readings: list[Reading] = field(default_factory=list)
    antonyms: list[str] = field(default_factory=list)
    synonyms: list[str] = field(default_factory=list)
    lookalikes: list[str] = field(default_factory=list)
    meanings: list[Meaning] = field(default_factory=list)
    nanoris: list[str] = field(default_factory=list)

class EntryJSONEncoder(json.JSONEncoder):
    def default(self, o):
        if dataclasses.is_dataclass(o):
            return dataclasses.asdict(o)
        return super().default(o)

def kuten_to_utf8(kuten):
    plan, ku, ten = kuten.split("-")
    euc0 = ( int( ku) + 0x20 ) | 0x80
    euc1 = ( int(ten) + 0x20 ) | 0x80
    if plan == '1':
        #  0x{A1..FE}{A1..FE}: JISX0213 plane 1, offset by +0x8080.
        euc = bytearray([euc0,euc1]).decode('euc_jisx0213','replace')
    else:
        # 0x8F{A1..FE}{A1..FE}: JISX0213 plane 2, with prefix 0x8F, offset by +0x8080.
        euc = bytearray([0x8f,euc0,euc1]).decode('euc_jisx0213','replace')
    return euc

def convert_kanken_to_float(kanken : str):
    """ Converts the given kanken level from str to floa.
    pre-1 = 1.5
    pre-2 = 2.5

    Args:
        kanken (str): the kanken level that should be converted
    """

    if(kanken == "pre-1"):
        kanken = 1.5
    elif(kanken == "pre-2"):
        kanken = 2.5
    else:
        kanken = float(kanken)
    
    return kanken

def execute():
    kanjidic2 = open('inputFiles/kanjidic2/kanjidic2.xml', 'r', encoding="utf-8")
    with open('inputFiles/klc/database.js', 'r', encoding="utf-8") as f:
        klc = json.loads(f.read().replace("var database = ", "")[:-2])
    with open('inputFiles/kanjium/antonyms.txt', 'r', encoding="utf-8") as f:
        reader = csv.reader(f, delimiter="\t")
        antonyms = {rows[0] : rows[1].split(",") for rows in reader}
    with open('inputFiles/kanjium/synonyms.txt', 'r', encoding="utf-8") as f:
        reader = csv.reader(f, delimiter="\t")
        synonyms = {rows[0] : rows[1].split(",") for rows in reader}
    with open('inputFiles/kanjium/lookalikes.txt', 'r', encoding="utf-8") as f:
        reader = csv.reader(f, delimiter="\t")
        lookalikes = {rows[0] : rows[1].split(",") for rows in reader}
    with open('inputFiles/kanjium/kanjidict.txt', 'r', encoding="utf-8") as f:
        reader = csv.reader(f, delimiter="\t")
        rtk_old  = {rows[0] : int(rows[18]) for rows in reader if rows[18] != ""}; f.seek(0)
        rtk_new  = {rows[0] : int(rows[19]) for rows in reader if rows[19] != ""}; f.seek(0)
        kanken   = {rows[0] : convert_kanken_to_float(rows[14]) for rows in reader if rows[14] != ""}; f.seek(0)
        wanikani = {rows[0] : int(rows[23]) for rows in reader if rows[23] != ""}; f.seek(0)
        jlpt_new = {rows[0] : int(rows[13].replace("N", "")[:1]) for rows in reader if rows[13] != ""}
    entry = Entry()
    entries = list()

    for _, elem in ET.iterparse(kanjidic2):
        if elem.tag == "literal":
            entries.append(entry)
            entry = Entry()
            entry.literal    = elem.text
            entry.klc        = int(klc[elem.text]["id"]) if elem.text in klc else -1
            entry.antonyms   = antonyms[elem.text] if elem.text in antonyms else None
            entry.synonyms   = synonyms[elem.text] if elem.text in synonyms else None
            entry.lookalikes = lookalikes[elem.text] if elem.text in lookalikes else None
            entry.rtk_old    = rtk_old[elem.text] if elem.text in rtk_old else -1
            entry.rtk_new    = rtk_new[elem.text] if elem.text in rtk_new else -1
            entry.jlpt_new   = jlpt_new[elem.text] if elem.text in jlpt_new else -1
            entry.kanken     = kanken[elem.text] if elem.text in kanken else -1.0
            entry.wanikani   = wanikani[elem.text] if elem.text in wanikani else -1
        elif elem.tag == "grade":
            entry.grade = int(elem.text)
        elif elem.tag == "freq":
            entry.frequency = int(elem.text)
        elif elem.tag == "stroke_count":
            entry.stroke_count = int(elem.text)
        elif elem.tag == "jlpt":
            entry.jlpt_old = int(elem.text)
        elif elem.tag == "variant":
            entry.variants.append(JIS(encoding=elem.attrib["var_type"], value=elem.text))
        elif elem.tag == "reading":
            entry.readings.append(Reading(r_type=elem.attrib["r_type"], value=elem.text))
        elif elem.tag == "meaning":
            if elem.attrib:
                entry.meanings.append(Meaning(language=elem.attrib["m_lang"], meaning=elem.text))
            else:
                entry.meanings.append(Meaning(language="en", meaning=elem.text))
        elif elem.tag == "nanori":
            entry.nanoris.append(elem.text)

    entries.pop(0)
    out_file = open("partiallyProcessedFiles/kanjidic2/kanjidic2.json", "wb")
    out = orjson.dumps(entries, out_file, option=orjson.OPT_INDENT_2)
    out_file.write(out)
    kanjidic2.close()

if __name__ == "__main__":
    execute()
