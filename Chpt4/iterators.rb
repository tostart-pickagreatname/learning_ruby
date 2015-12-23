# iterators are methods that invoke blocks of code.

# yield statements are leveraged to execute the contents of the block. The block is executed with context local to where the method was invoked.

def it
  # will output the value of thing even though it would not otherwise know about it.
  yield
  yield
#  puts "#{thing}" # will fail as it does not know about this variable since it is not local.
end

def another
  thing = 10
  it {puts "#{thing}"}
end

another

# so a block and a yield are ways of transfering context and all sorts of code to another function and then leveraging the code that is local to it.

# our block can also accept a parameter and return them, so for example

def countthing
  for i in 0..4
    yield i  # we can use brackets or not, it doesn't make much of a difference
  end
end

countthing {|j| print "#{j}"}
print "\n"

# so here we are sending a parameter to yield to print out each thing in the bit above. The .each method does a similar thing, but for the pieces of the array, hash, etc. that it has been written for.

# we may also write .each methods for the objects that we write. We'll learn more about this later.
# the block also returns the value of its last expression as the return value for the yield statement, so this may be used if we want.

# using a block to modifying a thing
def filter_nil(ar)
  ar.each do |val|
    return val if yield(val)
  end
end

# the first valid non-nil entry will be returned as the yield is filtering using the below and the block returns the value, which interacts with the if statement positively the first time it is non-nil or false
puts filter_nil([nil,nil,false,:j,nil]) {|v| v}



