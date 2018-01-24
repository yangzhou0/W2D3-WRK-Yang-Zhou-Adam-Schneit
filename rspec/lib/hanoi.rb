class Hanoi
  attr_accessor :piles
  def initialize
    @piles = [[3,2,1],[],[]]
  end
  
  def play
    # until won?
      # begin
      #   puts "from which pile? ( 0 -- 2)"
      #   from = gets.chomp
      #   puts "to which pile? (0 -- 2)"
      #   to = gets.chomp
      #   valid_move?(from,to)
      #   rescue
      #     puts 'invalid move'
      #   retry
      # end
      
      make_move(0,1)
      display
    # end
    game_over
  end
  
  def make_move(from,to)
    piles[to] << piles[from].pop
  end
  
  def won?
    piles.drop(0).any?{|pile| pile.size == 3}
  end
  
  def valid_move?(from,to)
    unless piles[to].empty?
      raise 'cant move a bigger disc to a smaller one' if piles[from].last > piles[to].last
    end
    
    raise 'cant grab from an empty pile' if piles[from].empty?
  end
  
  def game_over
    puts 'you won'
  end
  
  def display
    print "#{piles[0]}      #{piles[1]}           #{piles[2]}"
  end
  
end

if __FILE__ == $PROGRAM_NAME
  game = Hanoi.new
  game.play
end
