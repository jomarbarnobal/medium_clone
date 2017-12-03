require "rails_helper"

RSpec.feature "Edit Profile" do

  let (:user) {create(:user)}

  scenario "visit user" do
    sign_in user
    visit root_path

    click_on user.email

    expect(page).to have_content "User profile" 
  end

  scenario "edit user profile" do
    sign_in user
    visit root_path
    click_on user.email      

    within (".edit")
      expect(page).to have_link "Edit profile"
  end
end