def solution1(file_name):
    file = open(file_name, "r")
    lines = file.read().splitlines()


def solution2(file_name):
    file = open(file_name, "r")
    lines = file.read().splitlines()


if __name__ == '__main__':
    print('Solution Part One:', solution1('input.txt'))
    print('Solution Part Two:', solution2('input.txt'))
