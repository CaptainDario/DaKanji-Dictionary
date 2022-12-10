import os
import re
from io import BytesIO, TextIOWrapper

from cairosvg import svg2png
from PIL import Image

class KanjiVGPreprocessor():
    kanjiVGDirectory = 'inputFiles/kanjiVG'
    kanjiVGOutputDirectory = 'partiallyProcessedFiles/kanjiVG'

    @staticmethod
    def show_svg_from_path(path: str):
        out = BytesIO()
        svg2png(open(path, 'rb').read(), output_width=1000, output_height=1000, write_to=out)
        image = Image.open(out)
        image.show()

    @staticmethod
    def remove_copyright_notice(file: TextIOWrapper):
        ## In order to save space the copyright notice in individual files is removed. The copyright is included
        ## in the application. The resulting files from this function are used as an intermediary step before
        ## inserting the data into database. They are not to be distributed in this form until the copyright is
        ## reattached.
        return re.sub(r'(<!--)(.|\n)*(-->)', '', file.read())



#note the id and the name is the unicode of the kanji
if __name__ == "__main__":
    # KanjiVGPreprocessor.showSVGFromPath('inputFiles/0f9a8.svg')
    for svg in os.listdir(KanjiVGPreprocessor.kanjiVGDirectory):
        # skip all not svg files
        if(not svg.endswith(".svg")):
            continue

        if not os.path.exists(KanjiVGPreprocessor.kanjiVGOutputDirectory):
            os.mkdir(KanjiVGPreprocessor.kanjiVGOutputDirectory)

        svgOutput = open(os.path.join(KanjiVGPreprocessor.kanjiVGOutputDirectory, svg), 'w', encoding="utf-8")
        svgOutput.write(svgNoCopyright)
