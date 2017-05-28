require 'rspec'
require_relative '../model/prime_factors_calculator'

describe 'Prime Factors Calculator' do
  let(:primeFactorCalculator) { PrimeFactorsCalculator.new }

  it 'Factorize 0 should return Exception' do
    expect { primeFactorCalculator.calculate(0) }.to raise_error
  end

  it 'Factorize 1 should return Exception' do
    expect { primeFactorCalculator.calculate(1) }.to raise_error
  end

  it 'Factorize 2 should return [2]' do
    expect(primeFactorCalculator.calculate(2)).to eq [2]
  end

  it 'Factorize 4 should return [2, 2]' do
    expect(primeFactorCalculator.calculate(4)).to eq [2, 2]
  end

  it 'Factorize 90 should return [2, 3, 3, 5]' do
    expect(primeFactorCalculator.calculate(90)).to eq [2, 3, 3, 5]
  end

  it 'Factorize 360 should return [2, 2, 2, 3, 3, 5]' do
    expect(primeFactorCalculator.calculate(360)).to eq [2, 2, 2, 3, 3, 5]
  end
end