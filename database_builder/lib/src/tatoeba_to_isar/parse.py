import MeCab;
import ipadic;
import sys
import json
from tqdm import tqdm



print("Adding mecab processing to Japanese sentences")

# read json
with open(sys.argv[1], encoding="utf8") as f:
    js = json.loads(f.read())


# parse all japanese sentences using mecab
tagger = MeCab.Tagger(ipadic.MECAB_ARGS)
surfaces, tokens = [], []
for k, v in tqdm(js.items()):
    p = tagger.parse(str(v)).split("\n")
    js[k] = [v, [], []]
    for t in p:
        t = t.split("\t")

        if(len(t) != 1):
            js[k][1].append(t[0])
            js[k][2].append(t[1].split(","))

with open(sys.argv[1].replace("jpn", "jpn_mecab"), mode="w+", encoding="utf8") as f:
    js = f.write(json.dumps(js, ensure_ascii=False))

print("Finished mecab processing to Japanese sentences")