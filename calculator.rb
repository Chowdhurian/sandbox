# Build a calculator that performs addition and subtraction
# Create a class Calculator, which performs addition and
# subtraction of two numbers at a time. The sample code
# explains the expected API.

# method 1: basic add and substract 2 numbers

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

# multiply a number by Math.PI, round the result to 2 decimal points
  def multiply(a)
    result = a * PI
    puts "$#{result.round(2)}"
  end
end