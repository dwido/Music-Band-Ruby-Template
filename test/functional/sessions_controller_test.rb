require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

      test "should get new" do
        get :new
        assert_response :success
      end
      test "should have the right title" do
        get :new
        assert_select 'title', "North African, Andalusian, Middle Eastern Band Music - New York | Sign in"
      end

      before(:each) do
        @attr = { :email => "email@example.com", :password => "invalid" }
      end

      test "should re-render the new page" do
        post :create, :session => @attr
        response.should render_template('new')
      end

      it "should have the right title" do
        post :create, :session => @attr
        response.should have_selector("title", :content => "Sign in")
      end

      it "should have a flash.now message" do
        post :create, :session => @attr
        flash.now[:error].should =~ /invalid/i
      end
end
