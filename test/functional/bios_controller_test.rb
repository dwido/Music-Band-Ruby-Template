require 'test_helper'

class BiosControllerTest < ActionController::TestCase
  setup do
    @bio = bios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bio" do
    assert_difference('Bio.count') do
      post :create, bio: @bio.attributes
    end

    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should show bio" do
    get :show, id: @bio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bio.to_param
    assert_response :success
  end

  test "should update bio" do
    put :update, id: @bio.to_param, bio: @bio.attributes
    assert_redirected_to bio_path(assigns(:bio))
  end

  test "should destroy bio" do
    assert_difference('Bio.count', -1) do
      delete :destroy, id: @bio.to_param
    end

    assert_redirected_to bios_path
  end
end
