num_to_let = {0=>0, 1=> 3, 2=> 3, 3=> 5, 4=> 4, 5=> 4, 6=> 3, 7=> 5, 8=> 5, 9=> 4, 10=> 3, 11=> 6, 12=>6, "teen"=> 4, 13=> 4, 14=> 4, 15=> 3, 16=> 3, 17=> 5, 18=> 4, 19=> 4, 20=> 6, 30=> 6, 40=> 5, 50=> 5, 60=> 5, 70=> 7, 80=> 6, 90=> 6, "hundred"=> 7, "and"=> 3}
final_count = 0
def num_split(num, num_to_let)

  letter_count = 0
  working_digits = num.to_s.split('')
  if working_digits.length == 3
    letter_count += num_to_let["hundred"]
    letter_count += num_to_let[working_digits[0].to_i]
    if working_digits[1] != "0" || working_digits[2] != "0"
      letter_count += num_to_let["and"]
    else
      letter_count
    end
    working_digits.shift
  end
  if working_digits.length == 2
    if working_digits[0] == "1"
      if working_digits[1].to_i > 2
        letter_count += num_to_let["teen"]
      end
      letter_count += num_to_let[working_digits.join('').to_i]
    else
      letter_count += num_to_let[(working_digits[0]+"0").to_i]
      letter_count += num_to_let[working_digits[1].to_i]
    end
  end
  if working_digits.length == 1
    return num_to_let[num.to_i]
  end

  letter_count
end

(1..999).each do |num|

  final_count += num_split(num, num_to_let)
end

p final_count+11
