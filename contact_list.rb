# greeting
# menu
# user makes a choice
# user choice case
# - if its 1 add a contact
# - if its 2 view all contacts
# - if 3 exit the program
# - handle error if user makes invalid choice



def intro
  puts "$" * 50
  puts "Hello, welcome to the Contact List Manager."
  puts "P" * 50
end

def menu
  puts "Please select an option"
  puts "-" * 50
  puts "1) Add Contact"
  puts "2) View Contact"
  print "> "
  @input = $stdin.gets.chomp
end

def user_choice
  if @input == "1"
    add_contact
  elsif @input == "2"
    view_contact
  else @input != "1" || "2"
    puts "*" * 50
    puts "Invalid input."
    puts "*" * 50
    puts "-" * 50
    puts "Enter valid input"
    puts "-" * 50
    menu
  end
end

def add_contact
  puts "-" * 50
  puts "Enter Contact First Name"
  puts "-" * 50
  print "> "
  first_name = $stdin.gets.chomp
  puts "-" * 50
  puts "Enter Contact Last Name"
  puts "-" * 50
  print "> "
  last_name = $stdin.gets.chomp
  puts "-" * 50
  puts "Enter Contact Phone Number"
  puts "-" * 50
  print "> "
  phone_number = $stdin.gets.chomp
  puts "=" * 50
  puts "Adding #{first_name} #{last_name} to contacts."
  puts "-" * 50
  @contact = ["#{first_name}", "#{last_name}", "#{phone_number}"]
  puts @contact
  puts "=" * 50
  menu
end

def view_contact
  puts @contact
end

def exit_program
  puts "Goodbye"
  exit
end


intro

menu

user_choice

add_contact

view_contact

exit_program
