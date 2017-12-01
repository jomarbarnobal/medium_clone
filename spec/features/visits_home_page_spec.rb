require "rails_helper"

RSpec.feature "User visits homepage" do
  scenario "successfully visit home page" do
    visit root_path
    expect(page).to have_content "Home page"
  end
end