require "test_helper"

describe League do
  before do
    @league = League.new
  end

  it "must be valid" do
    @league.valid?.must_equal true
  end
end
