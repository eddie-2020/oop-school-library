class Classroom
  attr_reader :id
  attr_accessor :label

  def initialize(label)
    @label = label
  end
end

class Classroom < Student::Base
  has_many :student, class_name: 'Classroom'
  belongs_to :classroom, class_name: 'Student'
end
