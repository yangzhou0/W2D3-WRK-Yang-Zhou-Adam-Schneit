class Player 
  attr_accessor :hand, :pot, :name
  
  def initialize (hand=,pot=0,name='player')
    @hand = hand 
    @pot = pot
    @name = name
    
    deal_card
  
  end  
  

  
  
end