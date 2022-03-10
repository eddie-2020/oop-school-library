class Book
  attr_reader :id
  attr_accessor :title, :author

  def initialize(title, author)
    @id = Random.rand(1..1000)
    @title = title
    @author = author
  end
end

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
  end
end

class Person < Book::Base
  has_many :person, class_name: 'Book'
  belongs_to :rental, class_name: 'Book'
  has_many :person, class_name: 'Rental'
  belongs_to :rental, class_name: 'Person'
end
