require "test_helper"

describe ProLeaguesProPlayer do
  before do
    @pro_leagues_pro_player = ProLeaguesProPlayer.new
  end

  it "must be valid" do
    @pro_leagues_pro_player.valid?.must_equal true
  end
end
