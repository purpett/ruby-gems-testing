require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  # describe '#multiply' do
  #   it 'returns the product of two numbers' do
  #     calculator = Calculator.new
  #     expect(calculator.multiply(10, -3)).to eql(-30)
  #   end

  #   it 'returns the product of more than two numbers' do
  #     calculator = Calculator.new
  #     expect(calculator.multiply(5, 7, 3)).to eql(105)
  #   end

  #   it 'returns 0 when one number is 0' do
  #     calculator = Calculator.new
  #     expect(calculator.multiply(5, 2, 0)).to eql(0)
  #   end
  # end

  # describe '#subtract' do
  #   it 'returns the subtraction of two or more numbers' do 
  #     calculator = Calculator.new
  #     expect(calculator.subtract(10, 5, 2)).to eql(3)
  #   end
  # end

  # describe '#divide' do
  #   it 'returns quotient of two numbers' do
  #     calculator = Calculator.new
  #     expect(calculator.divide(9, 3)).to eql(3)
  #   end
  # end
end
