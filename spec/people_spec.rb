require 'rspec'
require_relative '../person'

describe Person do
  context 'When testing Person class' do
    person1 = Person.new(name: 'Albert', age: 10, parent_permission: false)
    person2 = Person.new(name: 'Pepe', age: 20, parent_permission: false)

    name = person1.name
    age = person2.age

    it 'Name of person1 should be "Albert"' do
      expect(name).to eq('Albert')
    end

    it 'Age of the person2 should be 20' do
      expect(age).to eq(20)
    end

    it 'ID of the person should be around 1 and 1000' do
      expect(person1.id).to be_between(1, 1000)
    end

    it 'The IDs of two person should be different' do
      expect(person1.id == person2.id).to be false
    end

    it 'Person2 should be able to use the service but person1 shouldn\'t' do
      expect(person2.can_use_services?).to be true
      expect(person1.can_use_services?).to be false
    end
  end
end
