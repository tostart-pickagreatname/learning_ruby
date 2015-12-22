require_relative 'csv_reader'

reader = CsvReader.new

ARGV.each do |csv_file_name|    # we will accept a list of csv filenames from the user when they run the script
  STDERR.puts "Processing #{csv_file_name}"
  reader.read_in_csv_data(csv_file_name) # here we are adding each file's contents to the list ubin the books_in_stock in the csv reader
end

puts "Total value = #{reader.total_value_in_stock}"

