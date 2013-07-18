require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get listings" do
    get :listings
    assert_response :success
  end

end
