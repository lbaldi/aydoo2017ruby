require 'rspec'
require_relative '../model/prime_factors_program'

describe 'Prime Factors Program' do

  let(:primeFactorProgram) { PrimeFactorsProgram }
  it 'Factorize 0 should return an empty list' do
    expect(primeFactorProgram.factorize(0)).to eq []
  end

end