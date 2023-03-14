require 'json'

def save_people(people)
  people = people.map do |person|
    [
      person.class,
      person.name,
      person.id,
      person.age,
      person.parent_permission
      #person.class == "Student" ? person.parent_permission : person.specialization
    ]
  end
  people_json = JSON.generate(people)
  File.open('people.json', 'w') do |file|
    file.write people_json
  end
  # File.open('people.json', 'w') do |file|
  #  file.write JSON.generate(people)
  # end
  # json_string = File.read('people.json')
  # data = JSON.parse(json_string)
  # puts data
end

def save_book(book)
  books = book.map do |book|
    [
      book.title,
      book.author,
    ]
  end
  books_json = JSON.generate(people)
  File.open('books.json', 'w') do |file|
    file.write books_json
  end
end

def save_rental(rental)
  rentals = people.map do |person|
    [
      person.class,
      person.name,
      person.id,
      person.age
    ]
  end
  people_json = JSON.generate(people)
  File.open('people.json', 'w') do |file|
    file.write people_json
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
