names = File.open("./p042_words.txt", 'r').read.tr!('\"', '').split(',')
triangle_names = 0
$triangle_numbers = [1]

def word_to_number(word)
  total = 0
  word.split('').each do |letter|
    total += letter.ord - 64
  end
  return total
end

def triangle_number_generator(num)
  while $triangle_numbers[-1] < num
    n = $triangle_numbers.length + 1
    $triangle_numbers.push(((n)*(n+1))/2)
  end
end

def triangle_number_check(num)
  triangle_number_generator(num) if $triangle_numbers[-1] < num
  return $triangle_numbers.include?(num)
end


names.each do |name|
  triangle_names += 1 if triangle_number_check(word_to_number(name))
end

puts triangle_names
