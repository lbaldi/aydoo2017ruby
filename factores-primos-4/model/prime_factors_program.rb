# Permite obtener los factores primos de un numero
class PrimeFactorsProgram
  attr_accessor :calculator
  attr_accessor :sorter
  attr_accessor :formatter

  def parse_input(number)
    Integer(number) or raise ExceptionInvalidInputForNumber
  end

  def initialize(calculator, sorter, formatter)
    self.calculator = calculator
    self.sorter = sorter
    self.formatter = formatter
  end

  def factorize(number)
    number = parse_input(number)
    factors = calculator.calculate(number)
    factors = sorter.sort(factors)
    formatter.format(factors)
  end
end
