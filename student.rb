require './person'
class Student < Person
  def initialize(age, name = 'Unknown', parent_permission = true)
    super(age, name, parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(selt)
  end

  def play_hooky
    @play_hooky = "¯\(ツ)/¯"
  end
end
