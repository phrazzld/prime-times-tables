require_relative '../primetimes'

describe 'n_primes' do
  it 'returns [3, 5, 7] when the input is 3' do
    output = n_primes(3)
    expect(output).to eq [3, 5, 7]
  end

  it 'returns [3] when the input is 1' do
    output = n_primes(1)
    expect(output).to eq [3]
  end

  it 'returns an empty array when the input is less than 1' do
    output = n_primes(-3)
    expect(output).to eq []
  end
end

describe 'is_prime' do
  it 'returns true for 3' do
    expect(is_prime(3)).to eq true
  end

  it 'returns false for 4' do
    expect(is_prime(4)).to eq false
  end

  it 'returns true for 5' do
    expect(is_prime(5)).to eq true
  end

  it 'returns false for 6' do
    expect(is_prime(6)).to eq false
  end

  it 'returns true for 7' do
    expect(is_prime(7)).to eq true
  end
end

describe 'primes_multiplication_table' do
  it 'returns an Array' do
    primes_table = primes_multiplication_table(n_primes(3))
    expect(primes_table).to be_an_instance_of(Array)
  end

  it 'returns an Array with length equal to primes.length + 1' do
    primes = n_primes(5)
    primes_length = primes.length
    primes_table = primes_multiplication_table(primes)
    expect(primes_table.length).to eq primes_length + 1
  end
end

describe 'print_table' do
end
