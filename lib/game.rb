class Game
  attr_reader :player, :choice, :random

  def initialize(choice)
    @choice = choice
    @random

  end

  def randomizer
    ["rock", "paper", "scissors"].sample
  end

  def result
    @random = randomizer

    if random == choice
      "The game is a draw"
    elsif random == "rock" && choice == "paper"
      "Player 1 wins"
    elsif random == "rock" && choice == "scissors"
      "Computer wins"
    elsif random == "paper" && choice == "rock"
      "Computer wins"
    elsif random == "paper" && choice =="scissors"
      "Player 1 wins"
    elsif random == "scissors" && choice == "paper"
      "Computer wins"
    elsif random == "scissors" && choice =="rock"
      "Player 1 wins"
    end
  end

  def output
    result
  end
end
