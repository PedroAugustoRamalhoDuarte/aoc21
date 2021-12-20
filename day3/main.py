def solution(file_name):
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
