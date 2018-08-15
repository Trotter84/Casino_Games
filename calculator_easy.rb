def greeting
  puts "=" * 50
  puts "Welcome to the Calculator of kinda useful calculators."
  print "press enter"
  gets
  puts "-" * 50
  puts "Lets do some math!"
  print "press enter"
  gets
  puts "-" * 50
  first_number
end

def intro
  puts "-" * 50
  puts "Want to try another maths?"
  puts "-" * 50
  puts "1) Yes"
  puts "2) No"
  puts "-" * 50
  again = gets.to_i
  case again
  when 1
    first_number
  when 2
    exit_program
  else
    puts "*" * 15
    puts "Invalid Input"
    puts "*" * 15
    intro
  end
end

def first_number
  puts "Give me your first number."
  print "> "
  @first_number = gets.to_f
  second_number
end

def second_number
  puts "Give me your second number."
  print "> "
  @second_number = gets.to_f
  modifier
end

def modifier
  puts "-" * 45
  puts "Choose your operation."
  puts "1) +"
  puts "2) -"
  puts "3) *"
  puts "4) /"
  puts "5) ^"
  print "> "
  @operator = gets.to_f
  operator
end

def operator
  case @operator
  when 1
    puts "#{@first_number} + #{@second_number} ="
    puts "press enter"
    gets
    @result = "#{@first_number + @second_number}"
    result
  when 2
    puts "#{@first_number} - #{@second_number} ="
    puts "press enter"
    gets
    @result = "#{@first_number - @second_number}"
    result
  when 3
    puts "#{@first_number} * #{@second_number} ="
    puts "press enter"
    gets
    @result = "#{@first_number * @second_number}"
    result
  when 4
    puts "#{@first_number} / #{@second_number} ="
    puts "press enter"
    gets
    @result = "#{@first_number / @second_number}"
    result
  when 5
    puts "#{@first_number} ** #{@second_number} ="
    puts "press enter"
    gets
    @result = "#{@first_number ** @second_number}"
    result
  else
    puts "*" * 15
    puts "Invalid Input"
    puts "*" * 15
    modifier
  end
end

def result
  puts @result
  gets
  intro
end

def exit_program
  puts "*" * 45
  puts "Goodbye"
  puts "👏"
  exit
end

greeting
