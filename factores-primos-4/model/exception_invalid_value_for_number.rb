# Error para cuando el valor del numero ingresado es incorrecto
class ExceptionInvalidValueForNumber < ArgumentError
  message_error = 'Debe ingresar un numero natural mayor igual a dos.'
  raise ExceptionInvalidValueForNumber, message_error
end