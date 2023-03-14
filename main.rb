require_relative './app'
require_relative './call_option_methods'

def main
  puts 'Welcome to School Library App!'

  App.read_people
  App.read_books
  App.read_rentals
  options
end

main
