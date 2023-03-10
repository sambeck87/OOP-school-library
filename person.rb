require_relative './nameable'

class Person < Nameable
  def initialize(age:, name: 'Unknown', parent_permission: true, id: Random.rand(1..1000))
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # attr_reader :id
  attr_accessor :name, :age, :parent_permission, :id

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
