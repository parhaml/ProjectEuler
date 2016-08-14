sum = 0 
(1..1000000).each do |num|
  trial = num.to_s
  if trial == trial.reverse
    test = "%b" % num
    sum += num if test == test.reverse
  end
end

p sum

