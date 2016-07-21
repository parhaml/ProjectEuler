def palindrome(max_num)
  answer = 0
  (100..max_num).to_a.reverse.each do |a|
    if a % 11 == 0
      b = 999
      db = 1
    else
      b = 990
      db = 11
    end

    while b >= a
      if a * b <= answer
        break
      elsif (a * b).to_s === (a * b).to_s.reverse
        answer = a * b
      end
    b = b - db

    end
  end
  answer
end

p palindrome(999)
