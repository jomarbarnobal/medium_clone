# require "rails_helper"

# RSpec.feature "User Signing in" do

#   background do
#     @user = create(:user)
#   end


#   scenario "successfully signin" do
#     sign_in @user
#     expect(page).to have_content @user.email
#   end

#   scenario "unsuccessfully sign in" do
#     visit new_user_session_path

#     fill_in "Email", with: "wrongemail"
#     fill_in "Password", with: "wrongpassword"

#     click_on "Log in"

#     expect(page).not_to have_content @user.username
#   end
# end