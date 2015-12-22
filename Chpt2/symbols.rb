# if we want to create something that is unique and always has the same value, but don't want to worry about giving it an explicit value ourselves, we may use symbols. These are assigned by starting a name with a colon. For example


def walk(direction)
  if direction == :north
    puts "north"
  elsif direction == :south
    puts "south"
  end
end

# expect "north" output
walk(:north)

# expect no output, as :east is not handled as an option
walk(:east)

# often symbols are used as keys in hashes. This makes sense as we know that they will be unique, which is a requirement for the keys of hashes.

things = {
  :one	=> 'first thing',
  :another => 'another thing'
}

puts things[:one] # => 'first thing'

