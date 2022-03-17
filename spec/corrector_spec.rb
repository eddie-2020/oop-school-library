require './decorator'
require './nameable'

describe Decorator do
  context 'Text the decorator class' do
    decorator = Decorator.new('Charles')

    it 'should have a class of instance decorator' do
      expect(decorator.instance_of?(Decorator)) == 'Charles'
    end
  end
end
