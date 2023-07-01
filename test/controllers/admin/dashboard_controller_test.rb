require "test_helper"

class Admin::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_dashboard_index_url
    assert_response :success
  end

  test "should get settings" do
    get admin_dashboard_settings_url
    assert_response :success
  end
end
