def save_people(people)
  File.open('people.json', 'w') do |file|
    file.write people
  end
end

def save_book(book)
  File.open('books.json', 'w') do |file|
    file.write book
  end
end

def save_rental(rental)
  File.open('rentals.json', 'w') do |file|
    file.write rental
  end
end
