# greeting
# menu
# user makes a choice
# user choice case
# - if its 1 add a contact
# - if its 2 view all contacts
# - if 3 exit the program
# - handle error if user makes invalid choice

@contact_book = []

def intro
  puts "-" * 45
  puts "Hello, welcome to the Contact List Manager."
  puts "-" * 45
  menu
end

def menu
  puts "Please select an option"
  puts "-" * 45
  puts "1) Add Contact"
  puts "2) View Contact"
  puts "3) Edit Contact"
  puts "4) QUIT"
  print "> "
  @input = gets.to_i
  user_choice
end

def user_choice
case @input
when 1
  add_contact
when 2
  view_contact
when 3
  edit_contact
when 4
  exit_program
else
  puts "Wrong"
  menu
end
end

def add_contact
  puts "-" * 45
  puts "Enter Contact First Name"
  puts "-" * 45
  print "> "
  first_name = gets.chomp
  puts "-" * 45
  puts "Enter Contact Last Name"
  puts "-" * 45
  print "> "
  last_name = gets.chomp
  puts "-" * 45
  puts "Enter Contact Phone Number"
  puts "-" * 45
  print "> "
  phone_number = gets.chomp
  puts "=" * 45
  puts "Adding #{first_name} #{last_name} to contacts."
  puts "-" * 45
  @contact = ["#{first_name}", "#{last_name}", "#{phone_number}"]
  puts "-" * 45
  puts @contact
  @contact_book << @contact
  puts "=" * 45
  gets
  menu
end

def view_contact
  puts @contact_book
  gets
  puts "-" * 45
  menu
end

def edit_contact
  puts "-" * 45
  puts "Which contact would you like to edit?"
  puts "-" * 45
  puts @contact_book
  add_contact
  x = gets.strip
  y = gets.strip
  @contact_book.map! { |name| name == x ? y : name }
  puts @contact_book
  menu
end

def exit_program
  puts "*" * 45
  puts "Goodbye"
  puts "👋"
  exit
end


intro
