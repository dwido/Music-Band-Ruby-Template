require 'test_helper'

class FriendlyForardingTest < ActionDispatch::IntegrationTest
  fixtures :all

    test "should forward to the requested page after signin" do
      user = users(:dwidob)
      visit edit_user_path(user)
      # The test automatically follows the redirect to the signin page.
      fill_in :email,    :with => user.email
      fill_in :password, :with => user.password
      click_button
      # The test follows the redirect again, this time to users/edit.
      response.should render_template('users/edit')
    end

  # test "the truth" do
  #   assert true
  # end
end
