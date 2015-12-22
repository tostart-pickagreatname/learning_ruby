# All you can use blocks for is associating them with a call to a method. The method can then reference them using "yield".
# you may also send them parameters when yielding.

def block_func
  puts "Start of method"
  yield("first", "one")
  yield("second", "two")
  puts "End of method"
end

block_func {|thing, another| puts "there you go #{thing}, to position #{another}"}

