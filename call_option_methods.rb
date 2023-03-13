require_relative './display_list_option'
require_relative './app'

def options # rubocop:disable Metrics/MethodLength: Method has too many lines
  loop do
    display_list
    option = gets.chomp.to_i
    case option
    when 1
      App.list_all_books
    when 2
      App.list_all_people
    when 3
      App.create_person
    when 4
      App.create_book
    when 5
      App.create_rental
    when 6
      App.list_all_rentals_by_id
    else
      App.exit_app
      break
    end
  end
end
