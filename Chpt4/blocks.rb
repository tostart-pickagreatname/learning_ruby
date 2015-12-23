# Blocks only exist at the end of a method invocation. When this occurs the block is then used as part of the method. 
# When we have a variable inside a block that is also referenced in the same scope outside the block, then the two are the same. If however it is only within the block, then it is local to the block. This means that variables are kept around when they need to be, and not otherwise.

a = 0
[1, 2].each do |ha|
  # the a's below are the same as above.
  a += 1
  puts a
  b=1
end

puts "#{a+2}"

# the following is undefined as it is not declared before the above block.
# puts b

# Basically, if it is declared within the block then it is part of the block, otherwise it is not part of the block.

# this can be a problem when we are using variables with the same name in a block, as we may change its type or some other similar accident. However, parameters are always local to the block, even if they have the same name.

# we may also declare block-local variables by putting them in the parameter list after a semi-colon. For example

thing = 5
[1].each do |ha; thing|
  thing = 2
  puts thing # gives us 2
end
puts thing # gives us 5 still.

