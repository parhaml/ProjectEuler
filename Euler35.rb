require "prime.rb"



circular_prime_count = 4
(10..1000000).each do |test|
  if Prime.prime?(test)
    number_trial = test.to_s.split("").to_a
    still_prime = true
    numbers_to_test = []
    (1..number_trial.length).each do |i|
      numbers_to_test.push(number_trial.rotate(i).join().to_i)
    end
    numbers_to_test.each do |trial|
      if !Prime.prime?(trial)
        still_prime = false
      end
    end
    circular_prime_count += 1 if still_prime
  end
end

puts circular_prime_count