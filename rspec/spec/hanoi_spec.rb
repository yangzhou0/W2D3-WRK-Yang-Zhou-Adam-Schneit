
require 'hanoi'
require 'rspec'

describe Hanoi do
  subject(:hanoi){ Hanoi.new }
  describe "#initialize" do
    it "creates 3 piles" do
      expect(hanoi.piles.size).to eq(3)
    end
    
    it "starts with all discs on first pile" do 
      expect(hanoi.piles[0].size).to eq(3)
    end
    
    it "makes sure that discs are piled smallest to biggest" do
      expect(hanoi.piles[0]).to eq([3,2,1])
    end
  end
  
  describe "#make_move" do 
    
    it "expect to move disc from one pile to another" do
      hanoi.make_move(0,1)
      expect(hanoi.piles).to eq([[3,2], [1], []])
    end
    
  end
  
  describe "#valid_move?" do
    it 'throw an invalid move error' do
    expect{hanoi.valid_move?(2,1)}.to raise_error('cant grab from an empty pile')
    end 
  end
  
  describe "#won" do
    it 'game is won when all the discs are moved to one' do
      hanoi.piles = [[],[],[3,2,1]]
      expect(hanoi.won?).to be true
    end 
  end
end