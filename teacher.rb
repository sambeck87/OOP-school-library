require './person'

class Teacher < Person
  attr_reader :rentals
  attr_accessor :specialization

  def initialize(age:, specialization:, name: 'Unknown', id:)
    super(age: age, name: name)
    @specialization = specialization
    @rentals = []
  end

  def can_use_services?
    true
  end
end
