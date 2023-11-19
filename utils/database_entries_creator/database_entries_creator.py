import argparse
from commons import *
import jmdict_enamdict_merger.jmdict_enamdict_merger as jem
import kanjidic2_loader.kanjidic2_loader as kdl
import kanjivg_preprocessor.kanjivg_preprocessor as kvg
import radicals_preprocessor.radicals_preprocessor as rad

def isProcessed(paths: list[Path]) -> bool:
    return all(test.exists() for test in paths)

def handleModule(program, module, force, isLong=False):
    if isProcessed(module.outputPaths()) and not force:
        print(f"Skipping because \x1b[0;31;40m{program}\x1b[0m files already exist. Use -f to override")
    else:
        print(f"Running \x1b[0;31;40m{program}\x1b[0m.")
        if isLong:
            print("This can take more than a minute, please be patient")
        module.execute()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
                    prog='Database entries creator',
                    description='This program is used to partially parse the data required for the functioning of dakanjiDictionary',
                    epilog='Made by michalpatryk and Dariyoo')
    
    parser.add_argument('-a', '--all', action='store_true')
    parser.add_argument('-f', '--force', action='store_true')
    parser.add_argument('--jm_en_merger', action='store_true')
    parser.add_argument('--kdict2', action='store_true')
    parser.add_argument('--kvg', action='store_true')
    parser.add_argument('--rad', action='store_true')

    args = parser.parse_args()

    run_list = {
        "jmdict_enamdict_merger": args.jm_en_merger,
        "kanjidic2_loader": args.kdict2,
        "kanjivg_preprocessor": args.kvg,
        "radicals_preprocessor": args.rad
    }

    if (args.all == True): # move if conditional execution for specific modules (eq. data already parsed) implemented
        for k, v in run_list.items():
            run_list[k] = True

    for program, shouldRun in filter(lambda item: item[1], run_list.items()):
        if shouldRun == True:
            match program:
                case "jmdict_enamdict_merger":
                    handleModule(program, jem, args.force, True)
                case "kanjidic2_loader":
                    handleModule(program, kdl, args.force)
                case "kanjivg_preprocessor":
                    handleModule(program, kvg, args.force)
                case "radicals_preprocessor":
                    handleModule(program, rad, args.force)
