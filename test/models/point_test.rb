require "test_helper"

describe Point do
  before do
    @point = Point.new
  end

  it "must be valid" do
    @point.valid?.must_equal true
  end
  it "must not be shit" do
    "not shit".must_equal "not shit"
  end
end
