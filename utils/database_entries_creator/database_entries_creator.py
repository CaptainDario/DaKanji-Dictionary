import argparse
import jmdict_enamdict_merger.jmdict_enamdict_merger as jem
import kanjidic2_loader.kanjidic2_loader as kdl
import kanjivg_preprocessor.kanjivg_preprocessor as kvg
import radicals_preprocessor.radicals_preprocessor as rad

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
                    prog='Database entries creator',
                    description='This program is used to partially parse the data required for the functioning of dakanjiDictionary',
                    epilog='Made by michalpatryk and Dariyoo')
    
    parser.add_argument('-a', '--all', action='store_true')
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

    if (args.all == True): # move if conditional execution (eq. data already parsed) implemented
        for k, v in run_list.items():
            run_list[k] = True

    for program in run_list:
        print(f"Running {program}.")
        if program == "jmdict_enamdict_merger":
            print("This can take more than a minute, please be patient")
            jem.execute()
        elif program == "kanjidic2_loader":
            kdl.execute()
        elif program == "kanjivg_preprocessor":
            kvg.execute()
        elif program == "radicals_preprocessor":
            rad.execute()
