class Dice

  def initialize
    roll
  end

  def roll
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6)
    show_dice
  end

  def show_dice
    print "Die1: ", @die1, " Die2: ", @die2
    show_sum
  end

  def show_dice
    print "Die1: ", @die1, " Die2: ", @die2
  end
end

d = Dice.new
d.show_dice
puts
d.show_sum
