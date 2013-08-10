require "test_helper"

describe User do
  before do
    @user = User.new(email: 'test@email.com', password: 'testing12345')
  end

  it "must be valid" do
    @user.valid?.must_equal true
  end
end
