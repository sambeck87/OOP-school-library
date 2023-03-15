require_relative './app'
require_relative './call_option_methods'
require_relative './read_data'

def main
  books = []
  people = []
  rentals = []
  puts 'Welcome to School Library App!'

  ReadData.read_people(people)
  ReadData.read_books(books)
  ReadData.read_rentals(books, people, rentals)
  options(books, people, rentals)
end

main
