class Game
  attr_reader :player, :choice

  def initialize(player1)
    @player1 = Player.new(player1)
  end

  def randomizer
    ["rock", "paper", "scissors"].sample
  end

  def result
    @random = randomizer
  end


end
