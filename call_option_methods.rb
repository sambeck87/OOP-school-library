require_relative './display_list_option'

def options(books, people, rentals) # rubocop:disable Metrics/MethodLength: Method has too many lines
  loop do
    display_list
    option = gets.chomp.to_i
    case option
    when 1
      App.list_all_books(books)
    when 2
      App.list_all_people(people)
    when 3
      App.create_person(people)
    when 4
      App.create_book(books)
    when 5
      App.create_rental(books, people, rentals)
    when 6
      App.list_all_rentals_by_id(rentals)
    else
      App.exit_app
      break
    end
  end
end
