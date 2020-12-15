require 'rails_helper'

RSpec.describe "As a visitor" do 
  describe "When I Visit '/applications/new'" do
    it "I am able to create a new application" do 
   
      visit "/applications/new"

      fill_in "Name", with: "Yesi"
      fill_in "Address", with: "1234 MakeBelieve Ave."
      fill_in "City", with: "Denver"
      fill_in "State", with: "Colorado"
      fill_in "Zip", with: "80204"
      fill_in "Description", with: "I love pets"
      # fill_in "Application Status", with: "In Progress"

      click_button "Submit"
      save_and_open_page

      expect(page).to have_content("Yesi")
    end
  end 
end