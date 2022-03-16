class RetrieveData
  def initialize(persons, books, rentals)
    @persons = persons
    @books = books
    @rentals = rentals
  end

  def retrieve_persons
    json = File.read('persons.json')
    if json.empty?
      []
    else
      parsed_json = JSON.parse(json)
      parsed_json.map do |person|
        if person['type'] == 'Student'
          student = Student.new(person['age'], person['name'])
          student.id = person['id']
          student
        else
          teacher = Teacher.new(person['age'], person['name'], person['specialization'])
          teacher.id = person['id']
          teacher
        end
      end
    end
  end

  def retrieve_books
    json = File.read('books.json')
    if json.empty?
      []
    else
      parsed_json = JSON.parse(json)
      parsed_json.map do |book|
        new_book = Book.new(book['title'], book['author'])
        new_book
      end
    end
  end
end
