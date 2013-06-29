require "test_helper"

describe Manager do
  before do
    @manager = Manager.new
  end

  it "must be valid" do
    @manager.valid?.must_equal true
  end
end
