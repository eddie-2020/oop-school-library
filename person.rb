require './nameable'
require './decorator'
require './rental'
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || parent_permission ? true : false
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end

  private

  def of_age?
    age.to_i >= 18.to_i
  end
end
