require 'sinatra'
require_relative './model/prime_factors_calculator'
require_relative './model/prime_factors_formatter'
require_relative './model/prime_factors_sorter_asc'
require_relative './model/prime_factors_sorter_desc'
require_relative './model/prime_factors_program'

get '/primos' do
  begin
    PrimeFactorsProgram.new(
      PrimeFactorsCalculator.new,
      PrimeFactorsSorterDesc.new,
      PrimeFactorsFormatter.new
    ).factorize(params['x'])
  rescue
    status 400
  end
end

post '/primos' do
  begin
    PrimeFactorsProgram.new(
      PrimeFactorsCalculator.new,
      PrimeFactorsSorterAsc.new,
      PrimeFactorsFormatter.new
    ).factorize(params['x'])
  rescue
    status 400
  end
end