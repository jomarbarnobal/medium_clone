require "rails_helper"

RSpec.feature "Following / Unfollowing user" do
  let(:john) {create(:user, username: "John Doe")}
  let(:solo) {create(:user, username: "Jomar Solo")}
 
  scenario "only signed-in user can follow other user" do
    sign_in john
    visit user_path(solo)
    click_on "Follow"
    
    expect(page).not_to have_button("Follow")
    expect(page).to have_button("Unfollow")

    click_on "Unfollow"
    expect(page).not_to have_button("Unfollow")
    expect(page).to have_button("Follow")
  end
end