require 'csv'
require_relative 'books_in_stock'   # as its location is relative to this file that is loading it.

class CsvReader
  def initialize
    @books_in_stock = []
  end

  def read_in_csv_data(csv_file_name)
    # we use the foreach method to send the row output of each row to the row insert for the block of code.
    CSV.foreach(csv_file_name, headers: true) do |row|
      # we use the << notation to append the book to the list of books.
      @books_in_stock << BookInStock.new(row["ISBN"], row["Price"])  # Here we see that we are reading in row as a hash, then grabbing the pieces. The headers true uses the header line to determine the names of the rows.
    end
  end

  def total_value_in_stock    # later we'll see how to use inject to sum a collection
    sum = 0.0 # initializing the value for the function call fresh each time.
    @books_in_stock.each {|book| sum += book.price} # using the inline block notation. Iterates using the each method
    sum  # returns the value of sum, the value of the last line.
   end

  def number_of_each_isbn
    # ...
  end
end

