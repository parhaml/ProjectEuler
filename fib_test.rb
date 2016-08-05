def fib(n)
  if n == 2 || n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end


p fib(10)