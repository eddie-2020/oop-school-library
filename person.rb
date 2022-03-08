class Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || parent_permission == true
  end

  private

  def is_of_age?
    @age >= 18
  end

  attr_accessor :name
  attr_reader :id, :age
end

person = Person.new(20, 'Edward Yara')
