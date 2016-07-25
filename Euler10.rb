require "prime"
answer = 0
Prime.each(2000000) do |prime|
  answer += prime
end

p answer
