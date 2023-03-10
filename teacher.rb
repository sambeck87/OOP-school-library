require './person'

class Teacher < Person
  attr_reader :rentals

  def initialize(age:, specialization:, name: 'Unknown')
    super(age: age, name: name)
    @specialization = specialization
    @rentals = []
  end

  def can_use_services?
    true
  end
end
