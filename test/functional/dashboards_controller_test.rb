require 'test_helper'

class DashboardsControllerTest < ActionController::TestCase
  setup do
    @dashboard = dashboards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dashboards)
  end

end
