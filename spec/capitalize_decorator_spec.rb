require 'rspec'
require_relative '../capitalize_decorator'

describe CapitalizeDecorator do
  context 'When testing CapitalizeDecorator class' do
    it 'The method correct_name should return "Diego"' do
      basedecorator_object = double('basedecorator_object')
      allow(basedecorator_object).to receive(:correct_name).and_return('diego')
      base = CapitalizeDecorator.new(basedecorator_object)
      expect(base.correct_name).to eq('Diego')
    end
  end
end
