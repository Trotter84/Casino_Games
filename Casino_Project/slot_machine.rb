class SlotGame
 SLOT_COUNT = 3
 TOKENS     = %w[Cherry Orange Plum Bell Melon Bar]
 KEEP_PLAYING_RESPONSES = %w[y yes sure ok go]

 def initialize(cash=nil)
   unless cash
     begin
       print "How much money you got foo? "
       cash = gets.to_i
       puts "You must have a positive bank account to play!" if cash<=0
     end until cash > 0
   end
   @cash = cash
   play_forever 
 end

 def play_forever
   begin
     # Using begin/end ensures one turn will be played
     # before asking the player if they want to go on
     play_one_turn
   end while @cash>0 && keep_playing?
   puts "You have ended with $#{@cash}; goodbye!"
 end

 def play_one_turn
   puts "Total cash: $#{@cash}"

   begin
     print "How much would you like to bet? "
     bet = gets.to_i
     puts "You only have $#{@cash}!" if bet > @cash
   end until bet <= @cash
   @cash -= bet

   results = SLOT_COUNT.times.map{ TOKENS.sample }
   puts results.join(' - ')
   winnings = bet * multiplier(results)

   if winnings>0
     @cash += winnings
     puts "You just won $#{winnings}!"
   else
     puts "You Lose hehehehhe."
   end
 end

 def keep_playing?
   print "Would you like to continue? "
   KEEP_PLAYING_RESPONSES.include?(gets.chomp.downcase)
 end

 private # Don't let anyone outside run our magic formula!
   def multiplier(*tokens)
     case tokens.flatten.uniq.length
       when 1 then 3
       when 2 then 2
       else 0
     end
   end
end