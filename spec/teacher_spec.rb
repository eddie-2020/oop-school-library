require './teacher'

describe Teacher do
  context 'Text the teacher class' do
    teacher = Teacher.new(30, 'Student Coach', 'Otto', parent_permission: true)

    it 'should have a class of teacher' do
      expect(teacher.instance_of?(Teacher)) == true
    end

    it 'should execute the exact age 30, name Otto, specialization Student Coach' do
      expect(teacher.age).to eq 30
      expect(teacher.name).to eq 'Otto'
      expect(teacher.specialization).to eq 'Student Coach'
      expect(teacher.parent_permission).to eq true
    end

    it 'should be able to use services' do
      expect(teacher.can_use_services?).to eq true
    end
  end
end
