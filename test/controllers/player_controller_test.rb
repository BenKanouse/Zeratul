require "test_helper"

describe PlayerController do
  it "should get show" do
    get :show
    assert_response :success
  end

end
