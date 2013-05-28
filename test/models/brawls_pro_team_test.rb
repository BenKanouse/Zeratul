require "test_helper"

describe BrawlsProTeam do
  before do
    @brawls_pro_team = BrawlsProTeam.new
  end

  it "must be valid" do
    @brawls_pro_team.valid?.must_equal true
  end
end
