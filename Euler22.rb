start = Time.now
names = File.open("./p022_names.txt", "r").read.tr!('\"', '').split(',').sort!
letter_vals = ("A".."Z").inject({}) { |hash, let| hash[let] = let.ord-64; hash}
score = 0
location = 1
names.each do |name|
  values = 0
  working = name.split('')
  working.each do |letter|
    values += letter_vals[letter]
  end
  score += values * location
  location += 1
end
last = Time.now
p score
p "solved in #{last - start} seconds"