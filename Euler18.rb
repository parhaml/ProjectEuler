nums = File.open('triangle_path.txt', 'r').read.split("\n")
nums.each_with_index do |row, index|
  nums[index] = row.split(" ").map(&:to_i)
end

def row_reducer(top, bottom)
  top.each_with_index do |val, index|
    top[index] = val + [bottom[index], bottom[index+1]].max
  end
end

while nums.length > 1
  row_reducer(nums[-2], nums[-1])
  nums.pop
end
p nums[0]