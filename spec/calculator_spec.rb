require 'calculator'

describe Calculator do
  subject(:calculator) {Calculator.new}
  it 'adds two numbers together' do
    expect(calculator.add(2, 3)).to eq 5
    expect(calculator.add(3, 1)).to eq 4
  end
  it 'subtracts one number from another' do
    expect(calculator.subtract(2, 1)).to eq 1
    expect(calculator.subtract(5, 2)).to eq 3
   end
end

describe Printer do
  subject(:printer) {Printer.new}
  it 'prints things' do
    expect(printer.print("This is a string !")).to eq "Output: This is a string !"
  end
end
