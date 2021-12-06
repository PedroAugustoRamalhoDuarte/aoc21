require './main.rb'

describe Day1 do
  describe '#solution1' do
    context "when have example input" do
      it "returns 7" do
        expect(Day1.solution1('example_input.txt')).to eq(7)
      end
    end
  end

  describe '#solution2' do
    context "when have example input" do
      it "returns 5" do
        expect(Day1.solution2('example_input.txt')).to eq(5)
      end
    end
  end
end
