def display_list
  options = {
    list_all_books: 'List all books',
    list_all_people: 'List all people',
    create_person: 'Create a person',
    create_book: 'Create a book',
    create_rental: 'Create a rental',
    list_all_rentals_by_id: 'List all rentals for a given person id',
    exit_app: 'Exit'
  }

  puts 'Please choose an option by entering a number:'

  options.each_with_index do |(_key, value), index|
    puts "#{index + 1}) - #{value} "
  end
end
