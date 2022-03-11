require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialization = specialization
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def can_use_services?
    true
  end
end
