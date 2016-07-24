require "prime"

i = 0
test = 1
while i < 10001
  test += 1
  if Prime.prime?(test)
    i += 1
  end
end
p test