require "test_helper"

describe ProLeague do
  before do
    @pro_league = ProLeague.new
  end

  it "must be valid" do
    @pro_league.valid?.must_equal true
  end
end
