require './person'

class Student < Person
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: true)
    @age = age
    @name = name
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def play_hooky(_hooky)
    @hooky = "¯\(ツ)/¯"
  end
end
