# prime_multiplication_table
# Print out a multiplication table of the first n prime numbers

# Check if a number is prime
def is_prime(x)
  limit = Math.sqrt(x)
  for i in 2..limit do
    return false if x % i == 0
  end
  return true
end

# Return n primes in an ordered array
def n_primes(n)
  primes = Array.new
  i = 3
  while primes.length < n
    primes.push(i) if is_prime(i)
    i += 1
  end
  return primes
end

# Given array of primes
# Return multiplication table as 2D array
def primes_multiplication_table(primes)
  primes_table = Array.new
  i = 0
  while i < primes.length
    j = 0
    row = Array.new
    while j < primes.length
      row.push(primes[i] * primes[j])
      j += 1
    end
    # Add row definition
    row.unshift(primes[i])
    primes_table.push(row)
    i += 1
  end
  return primes_table
end

# Format and print a 2D array
def print_table(table)
  width = primes_table.flatten.max.to_s.size+2
  puts primes_table.map { |a| a.map { |i| i.to_s.rjust(width) }.join }
end

n = ARGV[0].to_i
primes = n_primes(n)
primes_table = primes_multiplication_table(primes)

# Add header
primes.unshift(0)
primes_table.unshift(primes)

# Print table
print_table(primes_table)
