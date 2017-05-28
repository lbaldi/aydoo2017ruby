# Error para el ingreso incorrecto del parametro numero.
class ExceptionInvalidInputForNumber < ArgumentError
  message_error = 'El valor ingresado debe ser numerico.'
  raise ExceptionInvalidInputForNumber, message_error
end