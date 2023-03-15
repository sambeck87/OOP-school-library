require 'rspec'
require_relative '../base_decorator'
require_relative '../person'

describe BaseDecorator do
  context 'When testing BaseDecorator class' do
    it 'The method correct_name should return "diego"' do
      # person = double('person')
      # allow(person).to receive(:name) { 'diego' }
      # allow(person).to receive(:age) {12}
      # allow(person).to receive(:base=)

      person=Person.new(name:'diego', age:12)

      base = BaseDecorator.new(person)
      expect(base.correct_name).to eq('diego')
    end
  end
end
