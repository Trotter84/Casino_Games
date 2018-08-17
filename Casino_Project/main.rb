#user inputs name and monies they gots
#user selects a game.
#user wins or loses
#user can select a different game
#user can exit and recieve the his money.

require_relative 'slot_machine.rb'



def greeting
    puts "=" * 45
    puts "Mr Chows Fortune Slots"
    puts "Herrow MuthaFucka"
    puts "=" * 45
    puts "press enter to continue..."
    gets
    game_select
end

def intro
    puts '=' * 45
    puts "Do you want to play again?"
    puts "=" * 45
    puts "yes or no?"
    answer = gets.strip
    case answer
    when "yes"
        game_select    
    when "no"
        exit_program
    else
        puts "*" * 45
        puts "ERROR!"
        puts "Yes or No!!! It's not that hard dumbass!!!"
        puts "*" * 45
        puts ""
        puts "press enter to continue..."
        gets  
    end          
end

def game_select
    puts "=" * 45
    puts "Please select the game you want to play."
    puts "=" * 45        
    puts "+" * 45
    puts "1) Craps 💩"
    puts "2) Slots"
    puts "3) Exit"        
    puts "+" * 45
    choice = gets.to_i
    case choice
    when 1
        puts "-" * 45
        puts "Loading Craps..."
        puts "-" * 45
    when 2
        puts "-" * 45
        puts "Loading Slots Machines..." 
        puts "-" * 45
        SlotGame.new
    when 3
        exit_program
    else
        puts "*" * 45
        puts "Choose valid option asshole"
        puts "*" * 45
        puts ""
        puts "press enter to continue..."
        gets
    end                        
end


def exit_program
    puts "*" * 45
    puts "Thank You, Toodleoooo Martherfarkarss"
    puts "*" * 45
    exit
end




greeting
