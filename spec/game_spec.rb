require 'game'
require 'player'

describe Game do
  it "new game inherits player variable" do
    game = Game.new("Lionel")
    expect(game.player).to eq "Lionel"
  end
  it "gives player 3 options to choose from" do
    visit '/'
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content "Enter 'Rock', 'Paper' or 'Scissors'"
  end
  # it "player chooses Rock" do
  #   visit '/'
  #   fill_in :player, with: 'Bob'
  #   click_button 'Submit'
  #   @player.choice = 'Rock'
  #   click_button 'submit_move'
  #   expect(page).to have_content "You have chosen Rock"
  # end
end
