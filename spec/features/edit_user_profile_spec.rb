# require "rails_helper"

# RSpec.feature "Edit user profile" do

#   let(:user) { create(:user)}
#   let(:other_user) {create(:user)}

#   before :each do
#     sign_in user
#   end

#   scenario "current user can successfully edit her/his own profile" do
#     visit edit_user_path(user)
#     fill_in "user[username]", with: "New Username"
#     fill_in "user[description]", with: "Awesome Devops"
#     click_on "Save changes"

#     expect(page).to have_content "New Username"
#     expect(page).to have_content ("Awesome Devops")
#   end

#   scenario "Other user cannot update other's profile" do
#     visit user_path(other_user)
#     expect(page).not_to have_link "Edit"
#   end
# end