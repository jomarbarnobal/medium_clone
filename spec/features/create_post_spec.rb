require "rails_helper"

RSpec.describe "User create post" do

  let(:user) { User.create(username: "exampleuser", 
                          email: "examle@gmail.com", 
                          password: "omizsaintr", 
                          password_confirmation: "omizsaintr")}

  scenario "successfully create post" do
    sign_in user
    visit root_path
    click_on "Write a story"
    fill_in "Title", with: "My first post"
    fill_in "Body", with: "Some awesome content"
    click_on "Publish"

    within(".posts") do
      expect(page).to have_content "My first post"
      expect(page).to have_content "exampleuser"
    end
  end

  scenario "unsuccessfully creating post" do
    sign_in user
    visit root_path
    click_on "Write a story"
    fill_in "Title", with: "My second post"
    fill_in "Body", with: ""
    click_on "Publish"

    expect(page).to have_css ".error"
  end

  scenario "User are not logged in user cant create post" do
    visit root_path
    click_on "Write a story"

    expect(current_path).to eq(new_user_session_path)
  end
end