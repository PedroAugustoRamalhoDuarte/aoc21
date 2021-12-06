module Day1
  def self.solution(file_path)
    file = File.read(file_path)
    depths = file.split("\n").map(&:to_i)
    count = 0
    old_depth = depths[0]
    depths[1..-1].each do |depth|
      count += 1 if depth > old_depth
      old_depth = depth
    end
    count
  end
end

puts Day1.solution('input.txt')
