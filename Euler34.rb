#thanks to wikipedia for help on upper bound

def factorial_tester(num)
  sum = 0
  num.to_s.split("").map(&:to_i).each do |x|
    if x == 0
      sum += 1
    else
      x == 1 ? sum += x : sum += (1..x).reduce(:*)
    end

  end
  return sum
end

numbers = []
(3..100000).each do |number|
  trial = factorial_tester(number)
  if trial == number
    numbers.push(number)
  end
end

p numbers.reduce(:+)

