import json
# import prettyprinter as pp
from dataclasses import dataclass, field
import xml.etree.ElementTree as ET
import dataclasses

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
    jlpt: int = -1
    readings: list[Reading] = field(default_factory=list)
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


if __name__ == "__main__":
    kanjidic2 = open('inputFiles/kanjidic2/kanjidic2.xml', 'r', encoding="utf-8")
    entry = Entry()
    entries = list()
    i = 0
    for event, elem in ET.iterparse(kanjidic2):
        if elem.tag == "literal":
            entries.append(entry)
            entry = Entry()
            entry.literal = elem.text
            # i += 1
        elif elem.tag == "grade":
            entry.grade = elem.text
        elif elem.tag == "freq":
            entry.frequency = elem.text
        elif elem.tag == "jlpt":
            entry.jlpt = elem.text
        elif elem.tag == "variant":
            entry.variants.append(JIS(encoding=elem.attrib["var_type"], value=elem.text))
        elif elem.tag == "reading":
            entry.readings.append(Reading(r_type=elem.attrib["r_type"], value=elem.text))
        elif elem.tag == "meaning":
            if elem.attrib:
                entry.meanings.append(Meaning(language=elem.attrib["m_lang"], meaning=elem.text))
            else:
                entry.meanings.append(Meaning(language="eng", meaning=elem.text))
        elif elem.tag == "nanori":
            entry.nanoris.append(elem.text)

    entries.pop(0)
    # pp.install_extras()
    # pp.pprint(entries)
    out_file = open("partiallyProcessedFiles/kanjidic2/entries.json", "w", encoding="utf-8")
    json.dump(entries, out_file, cls=EntryJSONEncoder, sort_keys=True, indent=4)
    kanjidic2.close()