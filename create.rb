require_relative 'assist'
require_relative 'book'
require_relative 'person'
require_relative 'classroom'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'


module Create
  include Assist

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice = gets.chomp.to_i
    case choice
    when 1
      @person.push(create_student)
      puts 'Student created successfully'
      puts
    when 2
      @person.push(create_teacher)    
      puts 'Teacher created successfully'
      puts
    else
      puts 'Please enter either [1] or [2]'
      create_person
    end
  end

  def create_student
    student = namage
    print 'Enter student classroom: '
    classroom = gets.chomp
    print 'Is student permitted by parent? [Y] for yes [N] for no: '
    permitted = gets.chomp
    case permitted
    when 'y'
      Student.new(student[:age], student[:name], classroom, parent_permission: true)
    when 'n'
      Student.new(student[:age], student[:name], classroom, parent_permission: false)
    else
      puts 'Please enter either [Y] or [N] try filling again'
      create_student
    end
  end

  def create_teacher
    teacher = namage
    print 'Enter teacher specialisation: '
    teacher_spec = gets.chomp
    puts
    Teacher.new(teacher[:age], teacher_spec, teacher[:name])
  end

  def create_book
    print 'Enter book title: '
    book_title = gets.chomp
    print 'Enter book author: '
    book_author = gets.chomp
    
    @books.push(Book.new(book_title, book_author))
    # binding.pry
    puts 'Book created successfully'
    puts
  end

  def create_rental
    if @books.length.zero? || @person.length.zero?
      puts 'You need to create atleast a book and a person to proceed. You can do that from the menu'
    else
      puts 'Select a book from the following list by number'
      list_books
      print 'Enter choice: '
      choice_book = gets.chomp.to_i
      puts 'Select a person from the following list by number(not id)'
      list_people
      puts
      print 'Enter choice: '
      choice_person = gets.chomp.to_i
      print 'Enter date [YYYY/MM/DD]: '
      choice_date = gets.chomp
      @rentals.push(Rental.new(@books[choice_book], @person[choice_person], choice_date))
      puts 'Rental created successfully'
    end
    puts
  end
end
