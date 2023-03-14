require_relative './app'
require_relative './call_option_methods'

def main
  puts 'Welcome to School Library App!'

  App.read_data
  options
end

main
