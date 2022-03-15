#!/usr/bin/env ruby
require_relative 'helper'

class Main
  def initialize
    @helper = Helper.new
  end

  def run()
    puts 'Welcome to School Library App!'
    options
  end

  def options
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
    print '[Enter number: ] '
    choice = gets.chomp.to_i
    @helper.compute_choice(choice)
    options
  end
end

the_main = Main.new
the_main.run
