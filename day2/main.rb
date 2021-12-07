module Day2
  def self.solution1(file_path)
    # Parse hash
    file = File.open(file_path)
    hash = file.readlines("\n").map do |line|
      command, size = line.split(' ')
      { command: command, size: size.to_i }
    end
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
end

puts 'Solution: ', Day2.solution1('input.txt')
