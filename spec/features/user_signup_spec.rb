# require "rails_helper"

# RSpec.describe "User signup" do

#   scenario "Successfully signup" do
#     visit new_user_registration_path
  
#     fill_in "Username", with: "Example User"
#     fill_in "Email", with: "example@gmail.com"
#     fill_in "Password", with: "omizsaintr"
#     fill_in "Password confirmation", with: "omizsaintr"

#     click_on "Sign up"

#     expect(page).to have_content "example@gmail.com"
#   end

#   scenario "unsuccessfully signup" do
#     visit new_user_registration_path

#     fill_in "Email", with: "example@gmail.com"
#     fill_in "Password", with: ""
#     fill_in "Password confirmation", with: ""

#     click_on "Sign up"

#     expect(page).to have_content "error"
#   end
# end