require './person'

class Teacher < Person
  def initialize(age, name = 'Unknown', _parent_permission = true, specialization)
    super(age, name, perent_permission)
    @specialization = specialization
  end

  def can_use_services?
    @can_use_services = true
  end
end
