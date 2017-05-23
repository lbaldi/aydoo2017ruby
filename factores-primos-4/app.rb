require 'sinatra'
require_relative './model/prime_factors_program'

get '/primos' do
  PrimeFactorsProgram.factorize(params['x'])
end

post '/primos' do
  PrimeFactorsProgram.factorize(params['x'])
end