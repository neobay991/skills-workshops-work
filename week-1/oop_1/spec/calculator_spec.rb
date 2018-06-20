require 'calculator'

describe 'Calculator' do
  calculator = Calculator.new
  describe '#add two numbers' do
    it 'adds two numbers' do
      expect(calculator.add(2, 3)).to eq 5
      expect(calculator.add(6, 4)).to eq 10
      expect(calculator.add(0, 0)).to eq 0
      expect(calculator.add(-1, -1)).to eq -2
      expect(calculator.add(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(calculator.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(calculator.subtract(3, 2)).to eq 1
      expect(calculator.subtract(6, 4)).to eq 2
      expect(calculator.subtract(0, 0)).to eq 0
      expect(calculator.subtract(-1, -1)).to eq 0
      expect(calculator.subtract(Float::INFINITY, 0)).to eq Float::INFINITY
      expect(calculator.subtract(Float::INFINITY, Float::INFINITY)).to be_nan
    end
  end
end
