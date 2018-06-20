require 'calculator'

describe 'Calculator Output' do
  calculator_output = Calculator_Output.new
  describe '#print_answer' do
    it 'pretty prints the answer' do
      expect(calculator_output.print_answer(4)).to eq "The Answer is: 4"
      expect(calculator_output.print_answer(6)).to eq "The Answer is: 6"
      expect(calculator_output.print_answer(-1)).to eq "The Answer is: -1"
      expect(calculator_output.print_answer(0)).to eq "The Answer is: 0"
      expect(calculator_output.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end

=begin
describe Calculator_Output do
  describe '#print_answer' do
    it 'pretty prints the answer' do
      expect(subject.print_answer(4)).to eq "The Answer is: 4"
      expect(subject.print_answer(6)).to eq "The Answer is: 6"
      expect(subject.print_answer(-1)).to eq "The Answer is: -1"
      expect(subject.print_answer(0)).to eq "The Answer is: 0"
      expect(subject.print_answer(Float::INFINITY)).to eq "The Answer is: Infinity"
    end
  end
end
=end
