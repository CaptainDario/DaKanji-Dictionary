import os
from commons import *
import re
from io import BytesIO, TextIOWrapper

#from cairosvg import svg2png
from PIL import Image

class KanjiVGPreprocessor():
    kanjiVGDirectory = inputFilesPath.joinpath(kanjiVGPath)
    kanjiVGOutputDirectory = partiallyProcessedFilesPath.joinpath(kanjiVGPath)

    #@staticmethod
    #def show_svg_from_path(path: str):
    #    out = BytesIO()
    #    svg2png(open(path, 'rb').read(), output_width=1000, output_height=1000, write_to=out)
    #    image = Image.open(out)
    #    image.show()

    @staticmethod
    def remove_copyright_notice(file: TextIOWrapper):
        ## In order to save space the copyright notice in individual files is removed. The copyright is included
        ## in the application. The resulting files from this function are used as an intermediary step before
        ## inserting the data into database. They are not to be distributed in this form until the copyright is
        ## reattached.
        return re.sub(r'(<!--)(.|\n)*(-->)', '', file.read())

#note the id and the name is the unicode of the kanji
def execute(isEnglishOnly):
    # KanjiVGPreprocessor.showSVGFromPath('inputFiles/0f9a8.svg')
    for svg in os.listdir(KanjiVGPreprocessor.kanjiVGDirectory):
        # skip all not svg files
        if(not svg.endswith(".svg")):
            continue
        try:
            svgFile = open(os.path.join(KanjiVGPreprocessor.kanjiVGDirectory, svg), 'r', encoding="utf-8")
            svgNoCopyright = KanjiVGPreprocessor.remove_copyright_notice(svgFile)

            if not os.path.exists(KanjiVGPreprocessor.kanjiVGOutputDirectory):
                os.mkdir(KanjiVGPreprocessor.kanjiVGOutputDirectory)

            svgOutput = open(os.path.join(KanjiVGPreprocessor.kanjiVGOutputDirectory, svg), 'w', encoding="utf-8")
            svgOutput.write(svgNoCopyright)
        except Exception:
            print(f"Error while reading {svg}")

def outputFiles():
    return [partiallyProcessedFilesPath.joinpath(kanjiVGPath, "0f9a8.svg"),
            partiallyProcessedFilesPath.joinpath(kanjiVGPath, "09786.svg")]

def clearAll():
    for file in partiallyProcessedFilesPath.joinpath(kanjiVGPath).iterdir():
        if file.name != '.gitkeep':
            file.unlink()