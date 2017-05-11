require 'calculator'

describe Calculator do
  subject(:calculator) {Calculator.new}
  it 'adds two numbers together' do
    expect(calculator.add(2, 3)).to eq 5
    expect(calculator.add(3, 1)).to eq 4
    expect(calculator.add(0, 1)).to eq 1
    expect(calculator.add(-1, 2)).to eq 1
    expect(calculator.add(-1, -1)).to eq -2
    expect(calculator.add(0, Float::INFINITY)).to eq Float::INFINITY
    expect(calculator.add(Float::INFINITY, Float::INFINITY)).to eq Float::INFINITY
  end

  it 'subtracts one number from another' do
    expect(calculator.subtract(2, 1)).to eq 1
    expect(calculator.subtract(5, 2)).to eq 3
    expect(calculator.subtract(2, 1)).to eq 1
    expect(calculator.subtract(3, 1)).to eq 2
    expect(calculator.subtract(0, 0)).to eq 0
    expect(calculator.subtract(0, 1)).to eq -1
    expect(calculator.subtract(-1, -1)).to eq 0
    expect(calculator.subtract(0, Float::INFINITY)).to eq -Float::INFINITY
   end
end

describe Printer do
  subject(:printer) {Printer.new}
  it 'prints things' do
    expect(printer.print("This is a string !")).to eq "Output: This is a string !"
  end
end
