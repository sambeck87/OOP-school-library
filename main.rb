require_relative './app'
require_relative './call_option_methods'

def main
  puts 'Welcome to School Library App!'
  books = []
  people = []
  rentals = []

  options(books, people, rentals)
end

main
