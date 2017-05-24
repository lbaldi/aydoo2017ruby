# Permite obtener los factores primos de un numero
class PrimeFactorsProgram
  BASE_PRIME_FACTOR = 2

  def self.validate_number(number)
    message_error = 'Valor ingresado incorrecto. Debe ingresar un numero natural mayor igual a dos.'
    raise ArgumentError, message_error if number < BASE_PRIME_FACTOR
  end

  # Dado un numero calcula los factores y los retorna en una lista
  # Parametros:
  # +number+:: numero sobre el cual se obtendran los factores
  def self.factorize(number)
    validate_number(number)
    factor = BASE_PRIME_FACTOR
    factors = []
    while number % factor != 0 do
      factor += 1
    end
    factors.push(factor)
    remaining = number / factor
    factors += factorize(remaining) if remaining >= BASE_PRIME_FACTOR
    factors
  end
end
