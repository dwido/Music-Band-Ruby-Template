require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get audio" do
    get :audio
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
