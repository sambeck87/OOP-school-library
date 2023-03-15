require './person'

class Teacher < Person
  attr_reader :rentals
  attr_accessor :specialization

  def initialize(age:, specialization:, name: 'Unknown', id: Random.rand(1..1000))
    super(age: age, name: name, id: id)
    @specialization = specialization
    @rentals = []
  end

  def can_use_services?
    true
  end
end
