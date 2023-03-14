require 'json'

def save_people(people)
  people = people.map do |person|
    [
      person.class,
      person.name,
      person.id,
      person.age,
      person.instance_of?(Student) ? person.parent_permission : person.specialization
    ]
  end
  people_json = JSON.dump(people)
  File.open('people.json', 'w') do |file|
    file.write people_json
  end
  App.read_data
end

def save_book(book)
  books = book.map do |book|
    [
      book.title,
      book.author
    ]
  end
  books_json = JSON.generate(books)
  File.open('books.json', 'w') do |file|
    file.write books_json
  end
end

def save_rental(rental)
  rentals = rental.map do |rental|
    [
      rental.date,
      rental.book.title,
      rental.book.author,
      rental.person.id
    ]
  end
  rentals_json = JSON.generate(rentals)
  File.open('rentals.json', 'w') do |file|
    file.write rentals_json
  end
end

# require 'json'

# # Read the file into a string
# json_string = File.read('file.json')

# # Parse the JSON string into a hash
# data = JSON.parse(json_string)

# # Access the data as needed
# puts data['key1']
# puts data['key2']['nested_key']

# require 'json'

# # Data to be written to the file
# data = {
#   "name" => "John",
#   "age" => 30,
#   "email" => "john@example.com"
# }

# # Convert the data to a JSON-formatted string
# json_string = JSON.generate(data)

# # Write the JSON string to a file
# File.write('file.json', json_string)
