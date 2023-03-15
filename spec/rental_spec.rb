require 'rspec'
require_relative '../rental'

describe Rental do
  context 'When testing Rental class' do
    it 'There is a rental associate with a person and a book' do
      person = double('person')
      allow(person).to receive(:name).and_return('Diego')
      allow(person).to receive(:rentals).and_return([])
      allow(person).to receive(:rental=)
      book = double('book')
      allow(book).to receive(:title).and_return('Atomic Habits')
      allow(book).to receive(:rentals).and_return([])
      allow(book).to receive(:rental=)

      _classroom = Rental.new(date: '2023/03/10', person: person, book: book)
      expect(book.rentals).not_to be_empty
      expect(person.rentals).not_to be_empty
    end
  end
end
