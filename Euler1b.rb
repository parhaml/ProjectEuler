target = 999

def sumDivisibleBy(n, target)
  p = target / n
  return n*(p*(p+1)) / 2
end

puts sumDivisibleBy(3, target) + sumDivisibleBy(5, target) - sumDivisibleBy(15, target)
