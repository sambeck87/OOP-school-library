require './person'

class Student < Person
  attr_reader :classroom, :rentals

  def initialize(classroom:, age:, name: 'Unknown', parent_permission: true, id: Random.rand(1..1000))
    super(age: age, name: name, parent_permission: parent_permission, id: id)
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
