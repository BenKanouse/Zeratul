require "test_helper"

describe Brawl do
  before do
    @brawl = Brawl.new
  end

  it "must be valid" do
    @brawl.valid?.must_equal true
  end
end
