require './main.rb'

describe Day2 do
  describe '#solution1' do
    context "when have example input" do
      it "returns 150" do
        expect(Day2.solution1('example_input.txt')).to eq(150)
      end
    end
  end

  describe '#solution2' do
    context "when have example input" do
      it "returns 900" do
        expect(Day2.solution2('example_input.txt')).to eq(900)
      end
    end
  end
end
