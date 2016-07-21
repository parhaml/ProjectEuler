require 'prime'
number = 600851475143
answer = 0
Prime.each(Math.sqrt(number)) do |prm|
  while prm <= number && number % prm == 0
    number /= prm
    answer = prm
  end
end
p answer
