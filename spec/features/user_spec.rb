require 'rails_helper'

describe User, type: :feature do
  describe "User list" do
    before do
      create :peter
      create :user, name: "Mary"
      create :user, name: "Scott"
    end

    it "should show the list of users" do
      visit users_path
      expect(page).to have_content('Peter')
      expect(page).to have_content('Scott')
      expect(page).to have_content('Mary')
    end
  end
end