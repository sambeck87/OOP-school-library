require 'rspec'
require_relative '../student'

describe Student do
  context 'When testing student class' do
    student = Student.new(name: 'Sam', age: 17, classroom: 'Math')

    name = student.name
    age = student.age
    classroom = student.classroom
    message = student.play_hooky

    it 'Name of student should be "Sam"' do
      expect(name).to eq('Sam')
    end

    it 'Age of the student should be 17' do
      expect(age).to eq(17)
    end

    it 'The student classroom should be "Math"' do
      expect(classroom).to eq('Math')
    end

    it 'ID of the student should be around 1 and 1000' do
      expect(student.id).to be_between(1, 1000)
    end

    it 'The student method play_hooky should return "¯\(ツ)/¯"' do
      expect(message).to eq('¯\(ツ)/¯')
    end
  end
end
