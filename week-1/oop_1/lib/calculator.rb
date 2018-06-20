# understands how to calculate the logic, taking numbers as an argument
class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

# understands how to output the answer of a calculation
class Calculator_Output
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

calc = Calculator.new
calc_output = Calculator_Output.new

# combining methods
puts calc_output.print_answer(calc.add(1,2))
