require "test_helper"

describe ProPlayersThrowdown do
  before do
    @pro_players_throwdown = ProPlayersThrowdown.new
  end

  it "must be valid" do
    @pro_players_throwdown.valid?.must_equal true
  end
end
