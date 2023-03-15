require 'rspec'
require_relative '../base_decorator'

describe BaseDecorator do
  context 'When testing BaseDecorator class' do
    it 'The method correct_name should return "diego"' do
      nameable_object = double('nameable_object')
      allow(nameable_object).to receive(:correct_name).and_return('diego')
      base = BaseDecorator.new(nameable_object)
      expect(base.correct_name).to eq('diego')
    end
  end
end
