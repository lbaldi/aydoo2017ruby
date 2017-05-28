require 'rspec'
require_relative '../model/prime_factors_sorter_desc'

describe 'Prime Factors Sorter Desc' do
  let(:sorter) { PrimeFactorsSorterDesc.new }

  it 'Sort [] should return []' do
    expect(sorter.sort([])).to eq []
  end

  it 'Sort [2] should return [2]' do
    expect(sorter.sort([2])).to eq [2]
  end

  it 'Sort [3,4,2,5,2] should return [2,2,3,4,5]' do
    expect(sorter.sort([3, 4, 2, 5, 2])).to eq [5, 4, 3, 2, 2]
  end
end