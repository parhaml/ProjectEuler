require "prime.rb"

generated_primes = []
n = 3

puts Prime.prime?(n)

def quad_formula(n, a=1, b=41)
  return Prime.prime?(n**2 + a*n + b)
end

answer = 0
max_count = 0
(-999..999).each do |a|
  (-1000..1000).each do |b|
    count = 0
    prime_found = true
    trial_number = 0
    while prime_found
      if quad_formula(count, a, b) == false
        break
      end
      count += 1
    end
    if count >= max_count
      answer = a * b
      puts "a is #{a} and b is #{b} with #{count} primes"
      max_count = count
    end
  end
end
puts answer

