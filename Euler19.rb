months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
leap_months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]



def is_leap(year)
  if year % 100 == 0
    return year % 400 == 0
  else
    return year % 4 == 0
  end
end
def make_total_days()
  total_days = 0
  (1901..2000).each do |year|
    is_leap(year) ? total_days += 366 : total_days += 365
  end
  return total_days
end

def make_days_list(total_days)
  days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  days_list = []
  (1..total_days).each do |day|
    days_list.push(days[day%7])
  end
  return days_list
end




total_days = make_total_days()
final_list = make_days_list(total_days)
$count = 0
(1901..2000).each do |year|
  months_list = []
  if is_leap(year) == true
    leap_months.each do |days|
      months_list.push(final_list.slice!(0..days-1))
    end
  else
    months.each do |days|
      months_list.push(final_list.slice!(0..days-1))
    end
  end
  months_list.each do |month|
    $count += 1 if month[0] == "Sunday"
  end
end

p $count
