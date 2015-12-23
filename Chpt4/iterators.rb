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


# if you want to keep track of where you are, then use the with_index method.
# if you want to count things in the block, then use the .inject method. for example
[1,3,5,7].inject(0) {|sum,thing| sum+thing} # => 16
[1,3,5,7].inject(1) {|prod,thing| prod*thing} #=> 105

#The initial value is given with inject, then the operation is performed on that and the next thing in the list, keeping track of the initial value.
#This is just iterating through and keeping the last thing returned and then giving more things.

# If given no parameter then inject will use the first element of the array as the parameter, so [a,b,c,...].inject is the same as [b,c,...].inject(a).
# If you want to give it a pre-defined method then you can also do that by giving its name, for example [1,3,5,7].inject(:+) => 16 (just adding things as above)


# we may also create enumerators which have a "next" method, as well as use the loop construct to iterate through multiple enumerative objects at the same time. For example

alist = [1,2,3,4]
blist = [2,4,6,8, 10]

# could also call .each without a block, which would give an enumerator object
a = alist.to_enum
b = blist.to_enum

loop do
  puts "#{a.next} - #{b.next}"
end

# note that the above terminates before it hits 10, as it will only go until the first enumerator runs out. This is really quite clever.


