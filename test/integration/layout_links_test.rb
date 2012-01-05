require 'test_helper'

class LayoutLinksTest < ActionDispatch::IntegrationTest
  fixtures :all

  # test "the truth" do
  #   assert true
  # end
  
    test "should have a Home page at '/'" do
        get '/'
        assert_select 'title'
        assert_response :success
    end
    
    test "should have a The Band page at '/bios'" do
        get '/bios'
        assert_select 'title'
        assert_response :success
    end

    test "should have a contact page at '/contact'" do
        get '/contact'
        assert_select 'title'
        assert_response :success
    end

    test "should have an events page at '/events'" do
        get '/events'
        assert_select 'title'
        assert_response :success
    end

end
