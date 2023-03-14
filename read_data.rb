require 'json'
class ReadData
  def self.read_people(people)
    people_data = File.exist?('./people.json') ? File.read('./people.json') : File.write('people.json', '')

    if people_data.strip.empty?
      people = []
    elsif people.empty?
      JSON.parse(people_data).each do |person|
        people << if person[0] == 'Student'
                    Student.new(classroom: nil,
                                age: person[3],
                                name: person[1],
                                parent_permission: person[4],
                                id: person[2])
                  else
                    Teacher.new(name: person[1], age: person[3], specialization: person[4], id: person[2])
                  end
      end
    end
  end

  def self.read_books(books)
    if File.exist?('./books.json')
      books_data = File.read('./books.json')
    else
      File.write('books.json', '')
    end
    if books_data.strip.empty?
      books = []
    elsif books.empty?
      books_data = JSON.parse(books_data)
      books_data.each do |book|
        books.push(Book.new(title: book[0], author: book[1]))
      end
    end
  end

  def self.read_rentals(books, people, rentals)
    rentals_data = File.exist?('./rentals.json') ? File.read('./rentals.json') : File.write('rentals.json', '')

    if rentals_data.strip.empty?
      rentals = []
    elsif !rentals.empty?
      JSON.parse(rentals_data).each do |rental|
        person = people.select { |p| p.id == rental[3] }
        book = books.select { |b| b.title == rental[1] }
        rentals << Rental.new(date: rental[0], person: person.first, book: book.first)
      end
    end
  end
end
