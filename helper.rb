require_relative 'create'
require_relative 'list'
require 'pry'

class Helper
  include Create
  include List

  def initialize
    @books = []
    @person = []
    @rentals = []
  end

  def leave
    puts 'Thank you for using this app'
    exit
  end

  def compute_choice(choice)
    case choice
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals
    when 7
      leave
    else
      puts 'Please enter the options listed in the menu'
    end
  end
end
