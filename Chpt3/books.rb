
# Classes are capitalized. methods are not.
class BookInStock
  # we use the initialize method to give it some instance attributes.
  def initialize(title, price)
    # local variable convention of starting with lowercase
    # @ symbol part of name, so different variables
    @title = title
    # turns price into a floating point, but may fail so we should implement some error handling
    # we can send a float, an int, or a string, so long as it can be converted
    @price = Float(price)
  end
end

# to create new elements 
my_book = BookInStock.new("tit1", 5)
your_book = BookInStock.new("tit2", 2.5)

puts my_book.inspect
puts your_book.inspect


