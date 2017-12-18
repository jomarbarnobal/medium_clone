require 'rails_helper'

RSpec.describe User do

  describe "following and unfollowing other users" do

    let(:john) {create(:user, username: "John Doe")}
    let(:solo) {create(:user, username: "Solo User")}

    it "add relationships between the other users" do

      john.follow(solo)
      expect(john.following?(solo)).to be_truthy

      john.unfollow(solo)
      expect(john.following?(solo)).to be_falsy
      expect(solo.followers).not_to include(john)
    end
  end
end