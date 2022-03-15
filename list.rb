module List
  def list_people
    if @person.length.zero?
      puts 'Nobody added yet!'
    else
      @person.each_with_index do |pers, index|
        if pers.is_a?(Student)
          puts "#{index + 1}) [Student] Name: #{pers.name}, ID: #{pers.id}, Age: #{pers.age}"
        else
          puts "#{index + 1}) [Teacher] Name: #{pers.name}, ID: #{pers.id}, Age: #{pers.age}"
        end
      end
    end
    puts
  end

  def list_books
    if @books.length.zero?
      puts 'No books added yet!'
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}) Title: #{book.title}, Author: #{book.author}"
      end
    end
    puts
  end

  def list_rentals
    if @rentals.length.zero?
      puts 'You need to create a rental to proceed. You can do that from the menu'
    else
      print 'ID of person: '
      person_id = gets.chomp.to_i
      puts
      @rentals.each do |rent|
        puts rent
        if rent.person.id == person_id
          puts 'Rentals:'
          puts "Date: #{rent.date}, Book: #{rent.book.title} by #{rent.book.author}"
        else
          puts 'Invalid ID, try again'
          puts
        end
      end
    end
    puts
  end
end
