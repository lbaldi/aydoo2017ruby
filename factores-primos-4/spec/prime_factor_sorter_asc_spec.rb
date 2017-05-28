require 'rspec'
require_relative '../model/prime_factors_sorter_asc'

describe 'Prime Factors Sorter Asc' do
  let(:sorter) { PrimeFactorsSorterAsc.new }

  it 'Sort [] should return []' do
    expect(sorter.sort([])).to eq []
  end

  it 'Sort [2] should return [2]' do
    expect(sorter.sort([2])).to eq [2]
  end

  it 'Sort [3,4,2,5,2] should return [2,2,3,4,5]' do
    expect(sorter.sort([3, 4, 2, 5, 2])).to eq [2, 2, 3, 4, 5]
  end
end