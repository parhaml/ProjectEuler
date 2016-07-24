def is_prime(n)
  if n == 1
    return false
  elsif n < 4
    return true
  elsif n % 2 == 0 
    return false
  elsif n < 9
    return true
  elsif n % 3 == 0
    return false
  else
    r = (Math.sqrt(n)).floor
    f = 5
    while f <= r
      if n % f == 0
        return false
      elsif (n % (f+2)) == 0
        return false
      end
      f += 6
          
    end
  end
  return true
end

p is_prime(23)

      
    
    
