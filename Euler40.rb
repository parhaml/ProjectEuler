number = "0"

append = 1

while number.length < 1000001
  number += append.to_s
  append += 1
end

puts number[1].to_i*number[10].to_i*number[100].to_i*number[1000].to_i*number[10000].to_i*number[100000].to_i*number[1000000].to_i