require 'rspec'
require_relative '../trimmer_decorator'

describe TrimmerDecorator do
  context 'When testing TrimmerDecorator class' do
    it 'The method correct_name should return 10 characters of the string passed' do
      trimmerdecorator_object = double('trimmerdecorator_object')
      allow(trimmerdecorator_object).to receive(:correct_name).and_return('diegodiegodiegodiego')
      trimmer = TrimmerDecorator.new(trimmerdecorator_object)
      expect(trimmer.correct_name.length).to be(10)
    end
  end
end