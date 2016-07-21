def palindrome(max_num)
  answer = 0
  (100..max_num).to_a.reverse.each do |i|
    (100..max_num).to_a.reverse.each do |j|
      trial = (i * j).to_s
      answer = i * j if trial == trial.reverse && i * j > answer
    end
  end
  answer
end

p palindrome(999)
