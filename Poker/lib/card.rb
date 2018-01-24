class Card
  attr_reader :value, :suit
  
  def initialize(suit, value)
    @value = value
    @suit = suit
  end
  
  def to_s
    "#{@value.to_s}   #{@suit.to_s}"
  end
  
end