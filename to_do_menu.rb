require './lib/task.rb'
require './lib/list.rb'

  @saved_info = []


  def main_menu
    loop do
      puts "Press 'l' to add a new list"
      puts "Press 'a' to add a task"
      puts "Press 's' to see current to-dos"
      puts "Press 'x' to exit"

      main_choice = gets.chomp
      if main_choice == 'l'
        add_list
      elsif main_choice == 'a'
        puts "Enter a task:"
        add_task
      elsif main_choice == "x"
        puts "You won't get anything done!"
        exit
      elsif main_choice == "s"
        see_it
      else
        puts "Please enter a valid option."
      end
    end
  end

  def add_list
    puts 'Describe a new list:'
    list_name = gets.chomp
    @saved_info << List.new(list_name)
  end

  def add_task
    puts 'Add a task:'
    new_task = gets.chomp
    @saved_info[0].add_task(Task.new(new_task))
  end

  def see_it
    puts "Here are all of your tasks:"
      @saved_info[0].tasks.each do |task|
        puts task.description
      end
    puts "\n"
  end
main_menu



