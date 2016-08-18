$triangle_numbers = []
$pentagonal_numbers = [1]
$hexagonal_numbers = [1]

def triangle_number_generator(n)
  ($triangle_numbers.length..n).each {|n| $triangle_numbers.push(((n)*(n+1))/2) }
end

def pentagonal_number_generator(num)
  while $pentagonal_numbers[-1] < num
    n = $pentagonal_numbers.length + 1
    $pentagonal_numbers.push((n*(3*n-1))/2)
  end
end

def hexagonal_number_generator(num)
  while $hexagonal_numbers[-1] < num
    n = $hexagonal_numbers.length + 1
    $hexagonal_numbers.push(n*(2*n-1))
  end
end
#seed arrays
triangle_number_generator(285)
$triangle_numbers.shift
pentagonal_number_generator($triangle_numbers.last)
hexagonal_number_generator($triangle_numbers.last)


found = false
index_test = 286

while !found
  triangle_number_generator(index_test)
  pentagonal_number_generator($triangle_numbers.last)
  hexagonal_number_generator($triangle_numbers.last)
  if $pentagonal_numbers.include?($triangle_numbers.last) && $hexagonal_numbers.include?($triangle_numbers.last)
    found = true
    puts "Found! Index: #{$triangle_numbers.length} Number: #{$triangle_numbers.last}"
  else
    index_test += 1
  end
end