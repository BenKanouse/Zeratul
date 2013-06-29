require "test_helper"

describe Throwdown do
  before do
    @throwdown = Throwdown.new
  end

  it "must be valid" do
    @throwdown.valid?.must_equal true
  end
end
