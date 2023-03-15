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
  books = book.map do |b|
    [
      b.title,
      b.author
    ]
  end
  books_json = JSON.generate(books)
  File.write('books.json', books_json)
end

def save_rental(rental)
  rentals = rental.map do |r|
    [
      r.date,
      r.book.title,
      r.book.author,
      r.person.id
    ]
  end
  rentals_json = JSON.generate(rentals)
  File.write('rentals.json', rentals_json)
end
