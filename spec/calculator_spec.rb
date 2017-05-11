require 'calculator'

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
