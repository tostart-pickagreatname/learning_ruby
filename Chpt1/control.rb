# we can use control statements in neato ways that are more like english

if 10 > 0
  puts "yup"
end

# or we can write like this

puts "yup" if 10 > 0
puts "nope" if 10 < 0

# we may also write "while" loops in this way. 

thing = 1

thing += 1 while thing < 10
puts thing

# can use the "nil" value of "gets" when it runs out of lines like

# while line = gets
