require 'rspec'
require_relative '../nameable'

describe Nameable do
  it 'The method correct_name should raise an error' do
    nameable = Nameable.new
    expect { nameable.correct_name }.to raise_error(NotImplementedError)
  end
end
