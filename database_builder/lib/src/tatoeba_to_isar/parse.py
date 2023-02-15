import MeCab;
import ipadic;
import sys
import json



if(__name__ == "__main__"):
    print("Adding mecab processing to Japanese sentences")

    # read json
    with open(sys.argv[1], encoding="utf8") as f:
        js = json.loads(f.read())

    # parse all japanese sentences using mecab
    tagger = MeCab.Tagger(ipadic.MECAB_ARGS)
    surfaces, tokens = [], []
    for key, value in js.items():
        parsedValue = tagger.parse(str(value)).split("\n")
        js[key] = [value, [], []]
        for mecabOutItems in parsedValue:
            mecabOutItems = mecabOutItems.split("\t")

            if(len(mecabOutItems) != 1):
                js[key][1].append(mecabOutItems[0])
                js[key][2].append(mecabOutItems[1].split(","))

    with open(sys.argv[1].replace("jpn", "jpn_mecab"), mode="w+", encoding="utf8") as f:
        js = f.write(json.dumps(js, ensure_ascii=False))

    print("Finished mecab processing to Japanese sentences")