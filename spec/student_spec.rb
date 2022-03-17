require './student'

describe Student do
  context 'Text the student class' do
    student = Student.new(14, 'Tayo', parent_permission: false)

    it 'should have the class of student' do
      expect(student.instance_of?(Student)) == true
    end

    it 'should have thye exact age 14, name Tayo and parent permission false' do
      expect(student.age).to eq 14
      expect(student.name).to eq 'Tayo'
      expect(student.parent_permission).to eq false
    end
  end
end
