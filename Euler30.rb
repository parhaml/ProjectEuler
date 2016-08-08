answer = []
(2..999999).each do |num|
  trial = 0
  num.to_s.split('').each do |digit|
    trial += digit.to_i ** 5
  end
  answer.push(num) if num == trial
end
p answer.reduce(:+)
