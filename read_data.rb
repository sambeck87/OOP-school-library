=begin   def self.read_people
    if File.exist?('./people.json')
      people_data = File.read('./people.json')
    else
      File.write('people.json', '')
    end
    if people_data.strip.empty?
      @people = []
    elsif @people.empty?
      people_data = JSON.parse(people_data)
      people_data.each do |person|
        if person[0] == 'Student'
          @people.push(Student.new(classroom: nil, age: person[3], name: person[1], parent_permission: person[4], id: person[2]))
        else
          @people.push(Teacher.new(name: person[1], age: person[3], specialization: person[4], id: person[2]))
      end
      end
     end
  end

  def self.read_books
    if File.exist?('./books.json')
      books_data = File.read('./books.json')
    else
      File.write('books.json', '')
     end
    if books_data.strip.empty?
      @books = []
    elsif @books.empty?
      books_data = JSON.parse(books_data)
      books_data.each do |book|
        @books.push(Book.new(title: book[0], author: book[1]))
      end
    end
  end

  def self.read_rentals
    if File.exist?('./rentals.json')
      rentals_data = File.read('./rentals.json')
    else
      File.write('rentals.json', '')
     end
    if rentals_data.strip.empty?
      @rentals = []
    elsif @rentals.empty?
      rentals_data = JSON.parse(rentals_data)
      rentals_data.each do |rental|
        person = @people.select { |person| person.id == rental[3] }
        book = @books.select { |book| book.title == rental[1] }
        @rentals.push(Rental.new(date: rental[0], person: person.first, book: book.first))
      end
    end
  end
 =end
