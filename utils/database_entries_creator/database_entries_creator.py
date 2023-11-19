import argparse
from commons import *
from enum import Enum
import jmdict_enamdict_merger.jmdict_enamdict_merger as jem
import kanjidic2_loader.kanjidic2_loader as kdl
import kanjivg_preprocessor.kanjivg_preprocessor as kvg
import radicals_preprocessor.radicals_preprocessor as rad

Action = Enum('Action', ['Run', 'Skip', 'Delete', 'Regenerate'])

def isProcessed(paths: list[Path]) -> bool:
    return all(test.exists() for test in paths)

def handleModule(program, module, force, action, isEnglishOnly, isLong=False):
    match action:
        case Action.Run:
            if isProcessed(module.outputFiles()) and not force:
                print(f"Skipping because \x1b[0;31;40m{program}\x1b[0m files already exist. Use -f to override")
            else:
                print(f"Running \x1b[0;31;40m{program}\x1b[0m.")
                if isLong:
                    print("This can take more than a minute, please be patient")
                module.execute(isEnglishOnly)
        case Action.Delete:
            print(f"Removing files created by module \x1b[0;31;40m{program}\x1b[0m")
            paths = module.outputFiles()
            for path in paths:
                if path.exists():
                    path.unlink()
            if module == kvg:
                module.clearAll()
        case Action.Regenerate:
            handleModule(program, module, force, Action.Delete, isLong)
            handleModule(program, module, force, Action.Run, isLong)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
                    prog='Database entries creator',
                    description='This program is used to partially parse the data required for the functioning of dakanjiDictionary',
                    epilog='Made by michalpatryk and Dariyoo')
    
    parser.add_argument('-a', '--all', action='store_true', help='This flag enables a mode where all modules are executed')
    parser.add_argument('-f', '--force', action='store_true', help='This flag forces the modules to run, even if ' +
                        'it detects output files. It can break your dictionary. You should use -r or --regenerate' +
                        'unless you know what you are doing.')
    actionGroup = parser.add_mutually_exclusive_group()
    actionGroup.add_argument('-D', '--delete', action='store_true', help='This flag removes all output from selected modules')
    actionGroup.add_argument('-r', '--regenerate', action='store_true', help='This flag first removes, and the run all the selected modules')
    parser.add_argument('-e', '--eng-only', action='store_true', help='This flag generates only the japanese-english versions of the 0 ' +
                        'output files. This can result in significant size reduction of the final dict')
    parser.add_argument('--jm_en_merger', action='store_true')
    parser.add_argument('--kdict2', action='store_true')
    parser.add_argument('--kvg', action='store_true')
    parser.add_argument('--rad', action='store_true')

    args = parser.parse_args()
    # args = parser.parse_args(['-a'])

    if args.delete:
        actionType = Action.Delete
    elif args.regenerate:
        actionType = Action.Regenerate
    else:
        actionType = Action.Run

    run_list = {
        "jmdict_enamdict_merger": actionType if args.jm_en_merger else Action.Skip,
        "kanjidic2_loader": actionType if args.kdict2 else Action.Skip,
        "kanjivg_preprocessor": actionType if args.kvg else Action.Skip,
        "radicals_preprocessor": actionType if args.rad else Action.Skip
    }

    if args.all: # move if conditional execution for specific modules (eq. data already parsed) implemented
        for k, v in run_list.items():
            run_list[k] = actionType


    for program, shouldRun in filter(lambda item: True if item[1] is not Action.Skip else False, run_list.items()):
        match program:
            case "jmdict_enamdict_merger":
                handleModule(program, jem, args.force, actionType, args.eng_only, True)
            case "kanjidic2_loader":
                handleModule(program, kdl, args.force, actionType, args.eng_only)
            case "kanjivg_preprocessor":
                handleModule(program, kvg, args.force, actionType, args.eng_only)
            case "radicals_preprocessor":
                handleModule(program, rad, args.force, actionType, args.eng_only)
