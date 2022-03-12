require './books'

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, _book, person)
    super()
    @date = date
    @person = person
    @book = []
  end
end
