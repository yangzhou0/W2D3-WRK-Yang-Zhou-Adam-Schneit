require_relative 'card'
require 'byebug'
SUITS = [:spade, :club, :diamond, :heart]
VALUES = [1,2,3,4,5,6,7,8,9,10,11,12,13]
class Deck
  attr_reader :card_array
  def initialize
    @card_array = Array.new()
    set_deck
    @card_array.shuffle!
  end
  
  def set_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        self.card_array << Card.new(suit,value)
      end
    end
  end
  
end


if __FILE__ == $PROGRAM_NAME
  deck = Deck.new
  puts deck.card_array
  puts deck.card_array.count
  
  
end