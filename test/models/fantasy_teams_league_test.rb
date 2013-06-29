require "test_helper"

describe FantasyTeamsLeague do
  before do
    @fantasy_teams_league = FantasyTeamsLeague.new
  end

  it "must be valid" do
    @fantasy_teams_league.valid?.must_equal true
  end
end
