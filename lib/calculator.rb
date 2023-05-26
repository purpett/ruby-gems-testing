class Calculator 
  def add(*numbers)
    numbers.sum
  end

  def multiply(*numbers)
    numbers.inject(1) { |a, b| a * b }
  end

  def subtract(*numbers)
    numbers[1..].inject(numbers.first) { |a, b| a - b }
  end

  def divide(a, b)
    a / b
  end
end
