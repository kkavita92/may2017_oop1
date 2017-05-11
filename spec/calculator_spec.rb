require 'calculator'

RSpec.describe 'a calculator' do
  it 'adds two numbers together' do
    expect(add(2, 3)).to eq 5
    expect(add(1, 2)).to eq 3
    expect(add(0, 1)).to eq 1
    expect(add(-1, 2)).to eq 1
    expect(add(-1, -1)).to eq -2
    expect(add(0, Float::INFINITY)).to eq Float::INFINITY
    expect(add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts one number from another' do
    expect(subtract(2, 1)).to eq 1
    expect(subtract(3, 1)).to eq 2
    expect(subtract(0, 0)).to eq 0
    expect(subtract(0, 1)).to eq -1
    expect(subtract(-1, -1)).to eq 0
    expect(subtract(0, Float::INFINITY)).to eq -Float::INFINITY
  end

  describe Calculator do
    it 'adds two numbers together' do
      expect(subject.add(2, 3)).to eq 5
      expect(subject.add(3, 1)).to eq 4
    end

    it 'subtracts one number from another' do
      expect(subject.subtract(2, 1)).to eq 1
      expect(subject.subtract(5, 2)).to eq 3
    end
  end
end
