require 'player'
require "./spec/spec_helper"

describe Player do
  # let(:name) { Player.new("Bob") }
  player = described_class.new("Bob")
  it "should return the name entered by player" do
    expect(player.name).to eq "Bob"
  end
end
