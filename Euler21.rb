def proper_divisors(num)
  divisors = []
  (1..num/2).each do |divisor|
    divisors.push(divisor) if num % divisor == 0
  end
  return divisors.reduce(:+)
end
answer = []

(2..9999).each do |trial|
  second = proper_divisors(proper_divisors(trial))
  if second == trial
    answer.push(trial) if trial != (proper_divisors(trial))
  end
end

p answer.reduce(:+)

