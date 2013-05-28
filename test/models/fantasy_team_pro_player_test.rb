require "test_helper"

describe FantasyTeamsProPlayer do
  before do
    @fantasy_teams_pro_player = FantasyTeamsProPlayer.new
  end

  it "must be valid" do
    @fantasy_teams_pro_player.valid?.must_equal true
  end
end
