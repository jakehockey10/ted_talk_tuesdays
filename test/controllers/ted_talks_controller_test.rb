require 'test_helper'

class TedTalksControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get choose" do
    get :choose
    assert_response :success
  end

end
