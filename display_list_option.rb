def display_list
  # options = [
  #   { number: 1, label: "List all books" method:list_all_books },
  #   { number: 2, label: "List all people" },
  #   { number: 3, label: "Create a person" },
  #   { number: 4, label: "Create a book" },
  #   { number: 5, label: "Create a rental" },
  #   { number: 6, label: "List all rentals for a given person id" },
  #   { number: 7, label: "Exit" }
  # ]

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

  options.each_with_index do |(key, value), index|
    puts "#{index + 1}) - #{value} "
  end
end
