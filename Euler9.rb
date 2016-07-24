py_sum = 1000


(1..py_sum).each do |a_trial|
  (1..py_sum - a_trial).each do |b_trial|
    (1..py_sum - a_trial - b_trial).each do |c_trial|
      c = c_trial
      b = b_trial
      a = a_trial
      p "a #{a} b #{b} c#{c} #{a*b*c}" if a**2 + b**2 == c**2 && a+b+c == py_sum && a < b

    end
  end
end
