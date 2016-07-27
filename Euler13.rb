nums = File.open('Euler13_text.txt', 'r').read.split("\n").map(&:to_i)

p nums.reduce(:+).to_s.slice(0..9)