require './book'

describe Book do
  context 'Check if the following instance is a type of book' do
    book = Book.new('Unfinished', 'Priyanka Chopra Jonas')

    it 'should have a class of book' do
      expect(book.class) == Book
    end

    it 'should have the exact title name and author name' do
      expect(book.title).to eq 'Unfinished'
      expect(book.author).to eq 'Priyanka Chopra Jonas'
    end
  end
end
