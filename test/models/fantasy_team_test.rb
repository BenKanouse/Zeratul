require "test_helper"

describe FantasyTeam do
  before do
    @fantasy_team = FantasyTeam.new
  end

  it "must be valid" do
    @fantasy_team.valid?.must_equal true
  end
end
