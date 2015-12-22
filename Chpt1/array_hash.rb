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


