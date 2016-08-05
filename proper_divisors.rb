def proper_divisors(num)
  divisors = []
  (1..num/2).each do |divisor|
    divisors.push(divisor) if num % divisor == 0
  end
  return divisors.reduce(:+)
end