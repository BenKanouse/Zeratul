require "test_helper"

describe ProTeamsProPlayer do
  before do
    @pro_teams_pro_player = ProTeamsProPlayer.new
  end

  it "must be valid" do
    @pro_teams_pro_player.valid?.must_equal true
  end
end
