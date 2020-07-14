from flakey_lib.fancy_algorithm import fancy_algorithm
from tqdm import tqdm

def main() -> None:
    for i in tqdm(range(1,1000000)):
        fancy_algorithm(bytes(i))

if __name__ == '__main__':
    main()

