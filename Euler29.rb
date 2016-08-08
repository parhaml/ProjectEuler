integer_list = []
(2..100).each do |a|
  (2..100).each do |b|
    integer_list.push(a**b)
  end
end

puts integer_list.uniq.length