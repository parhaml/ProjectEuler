def solution(arr)
  answer = Hash.new
  arr.uniq.each do |value|
    answer[value] = arr.count(value)
  end

  return answer
end

p solution([1, 2, 1, 3, 3])

def solution2(arr)
  return Hash[arr.uniq.map{|value|[value, arr.count(value)]}]
end

p solution2([1, 2, 1, 3, 3])