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
  File.write('people.json', people_json)
end

def save_book(book)
  books = book.map do |book|
    [
      book.title,
      book.author
    ]
  end
  books_json = JSON.generate(books)
  File.write('books.json', books_json)
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
  File.write('rentals.json', rentals_json)
end
