require './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, name, parent_permission: true)
    super(name, age, parent_permission: parent_permission)
  end

  def owner=(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky(_hooky)
    @hooky = "¯\(ツ)/¯"
  end
end
