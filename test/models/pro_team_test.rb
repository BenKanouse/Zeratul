require "test_helper"

describe ProTeam do
  before do
    @pro_team = ProTeam.new
  end

  it "must be valid" do
    @pro_team.valid?.must_equal true
  end
end
