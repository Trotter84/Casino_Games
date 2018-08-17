class OverUnder
  def initialize
    greet
  end
class Dice

  def initialize
    roll1
    roll2
  end

  def roll1
    @die1 = 1 + rand(6)
  end
  def roll2
    @die2 = 1 + rand(6)
  end

  def show_dice
    print "Die 1: ", @die1, " Die 2: ", @die2
   
  end

  def show_sum
    print " The Die total is ", @die1 + @die2
    puts ""
  end
end

# d.show_dice
# puts
# d.show_sum
#craps done
#greet user done
#ask user name done
#GETS INPUT AND STORES NAMES
#ask if they would like to play
#GET INPUT START GAME
#ask what would they like to bet
#min and max
#GET AMOUNT FROM USER
#place bet
#roll dice
#compare dice
#winner/or loser

def greet
  puts "=" * 45
  puts "HI I am Fred, would you like to play some Over-Under 7"
  puts "1.) Yes"
  puts "2.) No"
  case gets.to_i
  when 1
    puts "That is great!"
    puts "What is your name?"
    @user_name = gets.strip
    host
  when 2
    puts "Okay have a great day!"
    exit
  end
end

def host
  puts "Alright the rules are simple"
  puts "In this game we are betting if it is over
       seven or under seven."
  puts "First you will place your bet."
  puts "Second we will roll the dice to see who wins"
  puts "Depending on what you betted if it is over seven
       or under seven you can win or loose."
  puts "So what would you like to bet on?"
  puts "1. Above 7"
  puts "2. Below 7"
  case gets.to_i
  when 1
    above
  when 2
    below 
  else
    "Sorry that is not an Option."
  end

end


def above
    @dice1 = Dice.new.roll1
    @dice2 = Dice.new.roll2
    @dice_total = @dice1 + @dice2
    puts @dice1, @dice2
    puts @dice_total
  if @dice_total > 7
    puts "=============================="
    puts "  CONGRATS YOU WIN!!!!!!!!"
    puts "=============================="
  end
end

def below
    @dice1 = Dice.new.roll1
    @dice2 = Dice.new.roll2
    @dice_total = @dice1 + @dice2
    puts @dice1, @dice2
    puts @dice_total
  if @dice_total < 7
    puts "=============================="
    puts "  CONGRATS YOU WIN!!!!!!!!"
    puts "=============================="
  end
end

end


