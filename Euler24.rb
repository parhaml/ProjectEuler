a = (0..9).to_a
a = a.permutation(a.length).to_a
a.sort
p a[999999].join.to_i