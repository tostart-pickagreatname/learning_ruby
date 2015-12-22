# It is more efficient to reference arrays than hashes.

# array literal
# [1, 'two', "three", nil]

# We can output what this array looks like by 
a = [1, 'two', "three", nil]
puts "Here is what the array looks like: #{a.inspect}"

# I'm iterating through them all as follows
a.each { |thing| puts "This thing is: #{thing}" }

# stuff with a ruby hash
my_name = {
  'first'	=> 'Steven',
  'middle'	=> 'Bradley',
  'last'	=> 'Scott'
}

my_name.each {|entry, name| puts "#{entry}: #{name} \n"}

puts "my name is #{my_name['first']} #{my_name['middle']} #{my_name['last']}"

# note that the keys and values in a hash may be arbitrary objects if you want
# if you want to dispaly nil stuff then you can use p instead of puts

a.each { |thing| p thing }

# also, a hash by default returns "nil" when referencing a key that it does not contain. nil evaluates to false by default. So we can do the following:

b = {
  'thing' 	=> 'yup',
}

# this DOES it if the thing is a KEY in the hash
if b['thing']
  puts 'yes'
end

if b["doesn't have this key"]
  puts 'yup'
end

# this skips it if it doesn't have the string as a KEY
if not b["doesn't have this key"]
  puts 'nope'
end

# to set the default value for the entries to 0 we may declare it as
c = Hash.new(0)

# then we could use this in the case that we want to count things.
s = ['a', 'b', 'b', 'b', 'a', 'a', 'c']
s.each {|charac| c[charac] = c[charac] + 1}
puts "#{c.inspect}"

# we can create arrays of strings with the following as well

a = %w{ this is also gonna make a list }
a[0] # => "this"
a[3] # => "gonna"

