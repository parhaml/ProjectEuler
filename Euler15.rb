#size of grid
n = 20

p (1..(2*n)).reduce(:*)/((1..n).reduce(:*)*(1..n).reduce(:*))