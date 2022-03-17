require './rental'
require './book'
require './person'

describe Rental do
  context 'Text the rental class' do
    date = '2022/09/04'
    person = Person.new(20, 'Edward')
    book = Book.new('Unfinished', 'Priyanka Chopra Jonas')
    rental = Rental.new(date, person, book)

    it 'should have a class of rentals' do
      expect(rental.instance_of?(Rental)) == true
    end

    it 'should have a class of person' do
      expect(rental.person.instance_of?(Person)) == true
    end

    it 'should have the exact name Edward' do
      expect(rental.person.name) == 'Edward'
    end

    it 'should have a class of book Unfinished by author Priyanka Chopra Jonas' do
      expect(rental.book.instance_of?(Book)) == true
    end
  end
end
