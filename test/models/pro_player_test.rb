require "test_helper"

describe ProPlayer do
  before do
    @pro_player = ProPlayer.new
  end

  it "must be valid" do
    @pro_player.valid?.must_equal true
  end
end
