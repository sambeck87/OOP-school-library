require './person'

class Student < Person
  attr_reader :classroom, :rentals

  def initialize(classroom:, age:, name: 'Unknown', parents: true)
    super(age: age, name: name, parents: parents)
    @classroom = classroom
    @rentals = []
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
