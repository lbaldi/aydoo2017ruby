require 'rspec'
require_relative '../model/prime_factors_formatter'

describe 'Prime Factors Formatter' do
  let(:formatter) { PrimeFactorsFormatter.new }

  it 'Format [] should return ""' do
    expect(formatter.format([])).to eq ''
  end

  it 'Format [2] should return "2"' do
    expect(formatter.format([2])).to eq '2'
  end

  it 'Format [3,4,2,5,2] should return "3,4,2,5,2"' do
    expect(formatter.format([3, 4, 2, 5, 2])).to eq '3,4,2,5,2'
  end
end