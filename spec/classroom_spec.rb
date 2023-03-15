require 'rspec'
require_relative '../classroom'

describe Classroom do
  context 'When testing Classroom class' do
    classroom = Classroom.new(label: 'Data Base')

    it 'The label of the classroom should be "Data Base"' do
      expect(classroom.label).to eq('Data Base')
    end

    it 'The classroom has to have a student add it' do
      student = double('student')
      allow(student).to receive(:classroom).and_return('Math')
      allow(student).to receive(:name).and_return('Diego')
      allow(student).to receive(:classroom=)
      classroom.add_student(student: student)
      expect(classroom.students).not_to be_empty
    end
  end
end
