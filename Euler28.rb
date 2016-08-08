def top_right_num(n)
  return (2*n-1)**2
end

def bottom_right_num(n)
  return (top_right_num(n-1) + (2*n-2))
end

def bottom_left_num(n)
  return (bottom_right_num(n) + (n-1)*2)
end

def top_left_num(n)
  return (bottom_left_num(n) + (n-1)*2)
end
answer = [1]
(2..501).each do |square|
  answer.push(top_right_num(square))
  answer.push(bottom_right_num(square))
  answer.push(bottom_left_num(square))
  answer.push(top_left_num(square))
end

puts answer.reduce(:+)

