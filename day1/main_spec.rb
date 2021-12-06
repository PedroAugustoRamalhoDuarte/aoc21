require './main.rb'

describe 'Day1#solution' do
  context "when have example input" do
    it "returns 7" do
      expect(Day1.solution('example_input.txt')).to eq(7)
    end
  end
end
