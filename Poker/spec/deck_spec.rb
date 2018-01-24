require 'rspec'
require 'deck'

describe Deck do
  subject(:deck){ Deck.new }
  let (:card) { double("card", )}
  describe "#initialize" do 
    it "initializes with a 52-card deck" do
      expect(deck.card_array.count).to eq(52)
    end
  end
  
  describe "#set_deck" do
    it "adds card objects to the deck" do 
      expect(deck.card_array.all?).to be instances of 
    end
  end
  
  
  
end