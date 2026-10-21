def add(a, b)
  a + b
end

def mul(a, b)
  a * b
end

RSpec.describe 'calc' do
  it 'adds numbers' do
    expect(add(2, 3)).to eq(5)
  end

  it 'multiplies numbers' do
    expect(mul(4, 5)).to eq(20)
  end

  it 'handles zero' do
    expect(add(0, 0)).to eq(0)
  end
end

RSpec.describe 'calc flaky' do
  it 'flaky: adds under load' do
    raise 'flaky: simulated timeout while adding' if rand < 0.4
    expect(add(1, 1)).to eq(2)
  end

  it 'flaky: multiplies under contention' do
    raise 'flaky: simulated contention in multiplier' if rand < 0.4
    expect(mul(3, 3)).to eq(9)
  end
end
