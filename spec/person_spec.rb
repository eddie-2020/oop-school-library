require './person'
require './nameable'

describe Person do
  context 'Test the person instance class' do
    person = Person.new(19, 'Jonathan', parent_permission: true)

    it 'should have a class person' do
      expect(person.class) == Person
    end

    it 'should have the exert age and name' do
      expect(person.age).to eq 19
      expect(person.name).to eq 'Jonathan'
      expect(person.parent_permission) == true
    end
  end
end
