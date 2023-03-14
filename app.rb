require_relative './book'
require_relative './student'
require_relative './teacher'
require_relative './rental'
require_relative './save_data'

class App
  @books = []
  @people = []
  @rentals = []

  def self.list_all_books
    if @books[0]
      @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    else
      puts 'Books Not Found'
    end
  end

  def self.list_all_people
    if @people[0]
      @people.each { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    else
      puts 'People Not Found'
    end
  end

  def self.create_person # rubocop:disable Metrics/MethodLength: Method has too many lines
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    roll = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp.to_s

    case roll
    when 1
      print 'Has parent_permission permission? [Y/N]: '
      permission = gets.chomp.to_s.downcase
      parent_permission = true if permission == 'y'
      parent_permission = false if permission == 'n'
      @people.push(Student.new(classroom: nil, age: age, name: name, parent_permission: parent_permission))
      puts @people
      save_people(@people)
    when 2
      print 'Specialization: '
      specialization = gets.chomp.to_s
      @people.push(Teacher.new(name: name, age: age, specialization: specialization))
      save_people(@people)
    end
    puts 'Person created successfully'
  end

  def self.create_book
    print 'Title: '
    title = gets.chomp.to_s
    print 'Author: '
    author = gets.chomp.to_s
    @books.push(Book.new(title: title, author: author))
    save_book(@books)
    puts 'Book created successfully'
  end

  def self.create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: '#{book.title}', Author: #{book.author}" }
    book_seleted = gets.chomp.to_i

    puts 'Select a person from the followinf list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, age: #{person.age}"
    end
    person_seleted = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    @rentals.push(Rental.new(date: date, person: @people[person_seleted], book: @books[book_seleted]))
    save_rental(@rentals)
    puts 'Rental created successfully'
  end

  def self.list_all_rentals_by_id
    print 'ID of person: '
    id = gets.chomp.to_i
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" if rental.person.id == id
    end
  end

  def self.exit_app
    puts 'Thank you for using this app'
  end
end
