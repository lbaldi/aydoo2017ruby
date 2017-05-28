require 'rspec'
require_relative '../model/prime_factors_program'

describe 'Prime Factors Program' do
  let(:primeFactorProgram) do
    calculator = double('calculator', calculate: [2, 2])
    sorter = double('sorter', sort: [2, 2])
    formatter = double('formatter', format: '2,2')
    PrimeFactorsProgram.new(calculator, sorter, formatter)
  end

  it 'Validate an input with a character should return Exception' do
    expect { primeFactorProgram.parse_input('a') }.to raise_error
  end

  it 'Validate an input with a string should return Exception' do
    expect { primeFactorProgram.parse_input('prueba') }.to raise_error
  end

  it 'Validate an input with an array should return Exception' do
    expect { primeFactorProgram.parse_input([2, 3]) }.to raise_error
  end

  it 'Validate an input with nil should return Exception' do
    expect { primeFactorProgram.parse_input(nil) }.to raise_error
  end

  it 'Validate an input with number shouldnt return Exception' do
    expect(primeFactorProgram.parse_input(4)).to eq 4
  end

  it 'Factorize any number should return nil' do
    expect(primeFactorProgram.factorize(4)).to eq '2,2'
  end
end