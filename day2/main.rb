module Day2
  def self.solution1(file_path)
    hash = parse(file_path)
    horizontal = 0
    depth = 0
    hash.each do |line|
      case line[:command]
      when 'forward'
        horizontal += line[:size]
      when 'down'
        depth += line[:size]
      when 'up'
        depth -= line[:size]
      else
        raise StandardError, 'Command does not exist'
      end
    end
    horizontal * depth
  end

  def self.solution2(file_path)
    hash = parse(file_path)
    aim = 0
    horizontal = 0
    depth = 0
    hash.each do |line|
      case line[:command]
      when 'forward'
        horizontal += line[:size]
        depth += aim * line[:size]
      when 'down'
        aim += line[:size]
      when 'up'
        aim -= line[:size]
      else
        raise StandardError, 'Command does not exist'
      end
    end
    horizontal * depth
  end

  def self.parse(file_path)
    file = File.open(file_path)
    file.readlines("\n").map do |line|
      command, size = line.split(' ')
      { command: command, size: size.to_i }
    end
  end
end

puts 'Solution 1: ', Day2.solution1('input.txt')
puts 'Solution 2: ', Day2.solution2('input.txt')
