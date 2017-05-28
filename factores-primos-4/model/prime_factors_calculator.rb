# Calcula los factores primos de un numero
class PrimeFactorsCalculator
  BASE_PRIME_FACTOR = 2

  def validate_number(number)
    raise ExceptionInvalidValueForNumber if number < BASE_PRIME_FACTOR
  end

  # Dado un numero calcula los factores y los retorna en una lista
  # Parametros:
  # +number+:: numero sobre el cual se obtendran los factores
  def calculate(number)
    validate_number(number)
    factor = BASE_PRIME_FACTOR
    factor += 1 while number % factor != 0
    factors = [factor]
    remaining = number / factor
    factors += calculate(remaining) if remaining >= BASE_PRIME_FACTOR
    factors
  end
end