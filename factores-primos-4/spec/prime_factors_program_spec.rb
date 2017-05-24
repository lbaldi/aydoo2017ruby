require 'rspec'
require_relative '../model/prime_factors_program'

describe 'Prime Factors Program' do
  let(:primeFactorProgram) { PrimeFactorsProgram }

  it 'Factorize 2 should return [2]' do
    expect(primeFactorProgram.factorize(2)).to eq [2]
  end

  it 'Factorize 4 should return [2, 2]' do
    expect(primeFactorProgram.factorize(4)).to eq [2, 2]
  end

  it 'Factorize 90 should return [2, 3, 3, 5]' do
    expect(primeFactorProgram.factorize(90)).to eq [2, 3, 3, 5]
  end

  it 'Factorize 360 should return [2, 2, 2, 3, 3, 5]' do
    expect(primeFactorProgram.factorize(360)).to eq [2, 2, 2, 3, 3, 5]
  end
end