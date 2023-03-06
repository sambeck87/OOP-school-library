require './person'

class Student < Person
  def initialize(age:, classroom:, parent_permission: true, name: 'Unknown')
    super(age: age, name: name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
