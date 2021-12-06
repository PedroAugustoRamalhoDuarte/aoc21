module Day1
  def self.solution1(file_path)
    file = File.read(file_path)
    depths = file.split("\n").map(&:to_i)
    return depth_count(depths)
  end

  def self.solution2(file_path)
    file = File.read(file_path)
    depths = file.split("\n").map(&:to_i)
    grouped_depths = []
    (0..(depths.length - 3)).to_a.each do |depth_index|
      grouped_depths << depths[depth_index..depth_index + 2].sum
    end
    return depth_count(grouped_depths)
  end

  def self.depth_count(depths)
    count = 0
    old_depth = depths[0]
    depths[1..-1].each do |depth|
      count += 1 if depth > old_depth
      old_depth = depth
    end
    count
  end
end

puts 'Solution 1: ', Day1.solution1('input.txt')
puts 'Solution 2: ', Day1.solution2('input.txt')
