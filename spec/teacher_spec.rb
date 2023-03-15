require 'rspec'
require_relative '../teacher'

describe Teacher do
  context 'When testing Teacher class' do
    teacher = Teacher.new(name: 'Diego', age: 40, specialization: 'Code')

    name = teacher.name
    age = teacher.age
    specialization = teacher.specialization

    it 'Name of teacher should be "Diego"' do
      expect(name).to eq('Diego')
    end

    it 'Age of the teacher should be 40' do
      expect(age).to eq(40)
    end

    it 'ID of the teacher should be around 1 and 1000' do
      expect(teacher.id).to be_between(1, 1000)
    end

    it 'The teacher specialization should be "Code"' do
      expect(specialization).to eq('Code')
    end
  end
end
