require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get about" do
    get home_about_url
    assert_response :success
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

  test "should get faqs" do
    get home_faqs_url
    assert_response :success
  end

  test "should get feed" do
    get home_feed_url
    assert_response :success
  end

  test "should get pricing" do
    get home_pricing_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get home_privacy_policy_url
    assert_response :success
  end

  test "should get products" do
    get home_products_url
    assert_response :success
  end

  test "should get terms" do
    get home_terms_url
    assert_response :success
  end

  test "should get team" do
    get home_team_url
    assert_response :success
  end
end
