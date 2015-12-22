# a note on all this terminology:
# internal state is held in instance variables
# external is exposed through methods that w're calling attributes
# other actions that can be performed are just called methods

# Classes are capitalized. methods are not.
class BookInStock

  # creates the reader functions for these instance variables
  # we can think of the symbols below as the NAMEs of these things, whereas later when the @'s are referenced those are the VALUES.
  # note: ONLY creates the accessor methods, but does not create the instance variables, which are established later in the code.
  attr_reader :title

  # we may have only writers by user attr_writer, but usually we want both methods and so make
  attr_accessor :price

  # we use the initialize method to give it some instance attributes.
  def initialize(title2, price2)
    # local variable convention of starting with lowercase
    # @ symbol part of name, so different variables
    @title = title2
    # turns price into a floating point, but may fail so we should implement some error handling
    # we can send a float, an int, or a string, so long as it can be converted
    @price = Float(price2)

  end

  def to_s
    # instance variables are available to everything in the instance, so they can be referenced in other scopes, like that of another function.
    "title: #{@title}, price: #{@price}"
  end

  # alternative to Java setter functions, the Ruby way!
  # a method that ends with an equals sign!
#  def price=(new_price)
#    @price = new_price
#  end

# we can also do custom setters and so on
  def float_price=(price)
    @price = Float(price)
  end
end

# to create new elements 
my_book = BookInStock.new("tit1", 5)
your_book = BookInStock.new("tit2", 2.5)

puts "#{my_book.price}"
my_book.price = 0.75 # invokes the price= function <- notice that the spacing may remain natural for easier reading. In particular, if you create a method ending in =, then it may be on the left hand side of an assignment.
puts "#{my_book.price}"

# does not enforce floating
my_book.price = 1
puts "#{my_book.price}"

# enforces floating
my_book.float_price = 1
puts "#{my_book.price}"

# by using methods we may maintain different appearances of instance variables. These are called VIRTUAL ATTRIBUTES. Outside they look like anything else, yet they are effectively calculated values. This means that if you change from a calulated value to an instance variable, or vice-versa, you don't have to change the code that interfaces it. This is a big win as many things may depend on it, yet here we don't have to tell it that we are using a method or an instance variable, it's all the same to everything else. When do you use them, and when not?T
