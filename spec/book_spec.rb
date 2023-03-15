require 'rspec'
require_relative '../book'

describe Book do
  context 'When testing Book class' do
    book = Book.new(title: 'Harry Potter', author: 'J. K. Rowling')

    title = book.title
    author = book.author

    it 'The title of the book should be "Harry Potter"' do
      expect(title).to eq('Harry Potter')
    end

    it 'The author of the book should be "J. K. Rowling"' do
      expect(author).to eq('J. K. Rowling')
    end
  end
end
