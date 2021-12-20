def solution1(file_name):
    file = open(file_name, "r")
    lines = file.read().splitlines()

    # Evaluate consts
    bits = len(lines[0])
    len_lines = len(lines)

    count_bits_one = [0] * bits
    for line in lines:
        for idx, bit in enumerate(line):
            count_bits_one[idx] += int(bit)

    gamma_rate = ['1' if (count_one) > (len_lines / 2.0) else '0' for count_one in count_bits_one]
    epsilon_rate = ['0' if x == '1' else '1' for x in gamma_rate]
    gamma_rate = int(''.join(gamma_rate), 2)
    epsilon_rate = int(''.join(epsilon_rate), 2)
    return epsilon_rate * gamma_rate


def solution2(file_name):
    file = open(file_name, "r")
    lines = file.read().splitlines()

    oxygen_rate = evaluate_bit(lines, 0, co2_rate=False)
    co2_rate = evaluate_bit(lines, 0, co2_rate=True)

    return int(''.join(oxygen_rate), 2) * int(''.join(co2_rate), 2)


def evaluate_bit(list, position, co2_rate=False):
    count_bits_one = 0
    list_ones = []
    list_zeros = []

    if len(list) == 1:
        return list[0]

    for item in list:
        if item[position] == '1':
            list_ones.append(item)
            count_bits_one += 1
        else:
            list_zeros.append(item)

    condition = count_bits_one < (len(list) / 2.0) if co2_rate else count_bits_one >= (len(list) / 2.0)
    if condition:
        return evaluate_bit(list_ones, (position + 1), co2_rate)
    else:
        return evaluate_bit(list_zeros, (position + 1), co2_rate)


if __name__ == '__main__':
    print('Solution Part One:', solution1('input.txt'))
    print('Solution Part Two:', solution2('input.txt'))
