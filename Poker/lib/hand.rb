require_relative 'deck'
class Hand
  attr_accessor :five_cards
  
  def initialize
    @five_cards = Array.new
    take_cards
  end
      
  def take_cards(deck)
    5.times do 
      @five_cards << deck.card_array.pop
    end
  end
  
  
    
    
    
end