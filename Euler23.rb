require "./proper_divisors.rb"
abundant_nums = []
sum = 0
p "Creating abundant numbers . . ."
(12..28123).each do |num|
  abundant_nums.push(num) if num < proper_divisors(num)
end


