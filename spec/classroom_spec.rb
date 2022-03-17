require './classroom'

describe Classroom do
  context 'Testing Classroom to have an instance of class' do
    classroom = Classroom.new('Class 4')

    it 'should have a correct class label' do
      expect(classroom.label) == 'Class 4'
    end

    it 'should not have any student at all' do
      expect(classroom.student.size) == 0
    end
  end
end
