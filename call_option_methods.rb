require_relative './display_list_option'

def options(books, people, rentals) # rubocop:disable Metrics/MethodLength: Method has too many lines
  loop do
    display_list
    option = gets.chomp.to_i
    case option
    when 1
      list_all_books(books)
    when 2
      list_all_people(people)
    when 3
      create_person(people)
    when 4
      create_book(books)
    when 5
      create_rental(books, people, rentals)
    when 6
      list_all_rentals_by_id(rentals)
    else
      exit_app
      break
    end
  end
end
