require './nameable'
require './decorator'

class Person < Nameable
  attr_accessor :name, :age
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

  private

  def of_age?
    age.to_i >= 18.to_i
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalizePerson = CapitalizeDecorator.new(person)
puts capitalizePerson.correct_name
capitalizeTrimmedPerson = TrimmerDecorator.new(capitalizePerson)
puts capitalizeTrimmedPerson.correct_name