# declaring arrays and grabbing objects

a = [1,2,'three',4]
a[0,0] = 'ha' #inserts at the beginning
puts a.to_s

a[0,3] = 'new' # [index, length] of the replace, so replaces elements from 0 to 2 with a single entry "new", reducing the length by 2.
puts a.to_s

# can also grab indexes coming back from the top using -i indices. Also grab ranges by a[1..5], etc. can do this also with negative numbers.

# for hashes we may declare them using the arrow notation, or if we have symbols we can use arrow stuff OR the following
h = { these: 'one', are: 'two', four: 'three', symbols: 'bet you thought I would say four.' }

# interestingly the below iterates through key value pair individually. first with the key and then with the value
h.each do |i|
  puts i
end

# what if we do this instead? then it only outputs the value as it considers that the second thing in each tuple
h.each do |i,j|
  puts j
end

# note: can use ANY object as the key for the entries
# counts are best done using hashes, as we can quickly check things and then add to the count. lists of things are best stored in arrays.

h = { haha: 'here it is' }

if h.has_key?(:haha)
  puts 'yes'
end
if h.has_key?('haha')
  puts 'yes again'
end


