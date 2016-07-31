def collatz(n)
  #returns number of steps needed to get n to 1
  steps = 1
  while n > 1
    if n % 2 == 0
      n = n / 2
    else
      n = (3 * n) + 1
    end
    steps += 1
  end
  return steps
end
answer = 0
new_best = 0
(1..999999).each do |trial|
  contender = collatz(trial)
  if contender > new_best
    new_best = contender
    answer = trial
  end
end

p answer
