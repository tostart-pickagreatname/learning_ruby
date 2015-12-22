
# Testing the use of the #{expression} evaulation in the creation of strings.
def some_thing(thing)
  # value returned is the value of the last expression
  "This is the new thing's name: #{thing.capitalize}"
end
puts some_thing("new_name")
