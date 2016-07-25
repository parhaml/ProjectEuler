def prime_seive(limit)
  cross_limit = Math.sqrt(limit)
  sieve = []
  limit.times { sieve.push(true) }
  (4..limit).step(2) do |i|
   sieve[i] = false
  end
  (3..cross_limit).step(2) do |i|
    if sieve[i]
      (i*i..limit).step(2*i) do |j|
          sieve[j] = false
      end
    end
  end
  sieve
end
