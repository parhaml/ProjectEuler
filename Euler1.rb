def multiples(number)
	sum = 0
	(0..number-1).each do |num|
		if num % 5 == 0 || num % 3 == 0
		  sum += num
    end
	end
  sum
end

puts multiples(1000)
