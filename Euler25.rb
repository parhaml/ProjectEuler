a = 1
b = 2
list = [1, 1, ]
while a.to_s.length < 1000
  a, b = b, a+b
  list.push(a)
end
p list.length
