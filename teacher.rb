require './person'

class Teacher < Person
  def initialize(name: 'Unknown', age:, specialization:)
    super(age: age, name: name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
