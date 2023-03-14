require_relative './nameable'

class Person < Nameable
  def initialize(age:, name: 'Unknown', parents: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parents = parents
  end

  attr_reader :id
  attr_accessor :name, :age

  def can_use_services?
    of_age? || @parents
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
