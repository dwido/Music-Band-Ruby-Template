require 'test_helper'

class AppImagesControllerTest < ActionController::TestCase
  setup do
    @app_image = app_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_image" do
    assert_difference('AppImage.count') do
      post :create, app_image: @app_image.attributes
    end

    assert_redirected_to app_image_path(assigns(:app_image))
  end

  test "should show app_image" do
    get :show, id: @app_image.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_image.to_param
    assert_response :success
  end

  test "should update app_image" do
    put :update, id: @app_image.to_param, app_image: @app_image.attributes
    assert_redirected_to app_image_path(assigns(:app_image))
  end

  test "should destroy app_image" do
    assert_difference('AppImage.count', -1) do
      delete :destroy, id: @app_image.to_param
    end

    assert_redirected_to app_images_path
  end
end
