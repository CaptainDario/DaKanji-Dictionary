import json
import os
from commons import *

input_files_dir = inputFilesPath
partially_processed_files_dir = partiallyProcessedFilesPath.joinpath(radicalsPath)

code_lookup = {
    "js01" : "⺅", # 化
    "js02" : "𠆢", # 个
    "js07" : "丷", # 并
    "3331" : "⺉", # 刈
    "js10" : "𠂉", # 乞
    "6134" : "⻌", # 込
    "js04" : "⺌", # 尚
    "3D38" : "⺖", # 忙
    "3F37" : "扌", # 扎
    "4653" : "⺡", # 汁
    "4A6D" : "⺨", # 犯
    "js03" : "⺾", # 艾
    "js05" : "⺹", # 老
    "4944" : "⺣", # 杰
    "504B" : "⺭", # 礼
    "4D46" : "⽧", # 疔
    "5072" : "⽱", # 禹
    "5C33" : "⻂", # 初
    "5474" : "⺲", # 買
    "3557" : "啇", # 滴
    "kozatoR" : "⻏", # 邦
    "kozatoL" : "⻖", # 阡
}


def preprocess(krad_path : str, radk_path : str):
    """ Preprocesses the radk and krad file
    """
    
    # read radk and find and replace all radicals by the character denoated by "code"
    with open(radk_path) as json_file:
        json_data = json.load(json_file)["radicals"]
        remove, add = [], {}
        
        for k, v in json_data.items():
            if(v["code"] != None):
                remove.append(k)
                add[code_lookup[v["code"]]] = v
        # create new dictionary with the new entires
        json_data = {**json_data, **add}
        # remove the old entries
        for elem in remove:
            del json_data[elem]

        # save new radk file to disk
        new_radk_file = os.path.join(partially_processed_files_dir, "radk.json")
        with open(new_radk_file, mode="w+", encoding="utf8") as f:
            f.write(json.dumps(json_data, ensure_ascii=False))

        # read and replace the same radicals in krad file
        with open(krad_path) as krad_json:
            krad = krad_json.read()
            for old_radical, new_radical in zip(remove, add):
                krad = krad.replace(old_radical, new_radical)

            new_krad_file = os.path.join(partially_processed_files_dir, "krad.json")
            with open(new_krad_file, mode="w+", encoding="utf8") as f:
                f.write(json.dumps(json.loads(krad)["kanji"], ensure_ascii=False))

def execute():
    input_files = os.listdir(input_files_dir)

    krad_name = [i for i in input_files if i.startswith('krad') and i.endswith(".json")][0]
    krad_path = os.path.join(input_files_dir, krad_name)

    radk_name = [i for i in input_files if i.startswith('radk') and i.endswith(".json")][0]
    radk_path = os.path.join(input_files_dir, radk_name)

    preprocess(krad_path, radk_path)

def outputPaths():
    return [partially_processed_files_dir.joinpath("krad.json"),
            partially_processed_files_dir.joinpath("radk.json")]
