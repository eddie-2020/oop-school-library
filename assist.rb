module Assist
  def namage
    print 'Enter name: '
    name = gets.chomp
    print 'Enter age: '
    age = gets.chomp.to_i
    { name: name, age: age }
  end
end
