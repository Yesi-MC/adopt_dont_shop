require 'rails_helper'

RSpec.describe "as a visitor", type: :feature do 
  describe "when I visit a application show page" do 
    it "can see applications attributes" do 
  application1 = Application.create!(
        name: "Steve", 
        address: "5280 denver st",
        city: "Denver", 
        state: "Colorado", 
        zip: 80219, 
        description: "big yard, loving home", 
        application_status: "Pending"
        )
  application2 = Application.create!(
        name: "Korra", 
        address: "246 Drury Lane", 
        city: "Far Way", 
        state: "Wyoming", 
        zip: 80299, 
        description: "looking for a new dog",
        application_status: "Accepted"
        )

  shelter1 = Shelter.create!( 
        name: "Adopt a paw", 
        address: "123 Paw Ave",
        city: "Denver",
        state: "Colorado",
        zip: 80219 
        )

  pet1 = Pet.create!(
        image: "string",
        name:"Spot",
        approximate_age: 5, 
        description: "Rotweiler", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

  pet2 = Pet.create!(
        image:"string", 
        name: "Buddy", 
        approximate_age: 8, 
        description: "Golden Retriever", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

      PetApplication.create!(
            pet_id: pet1.id,
            application_id: application1.id
            )
      PetApplication.create!(
            pet_id: pet2.id,
            application_id: application1.id
             )

  visit "/applications/#{application1.id}"

  expect(page).to have_content(application1.name)
  expect(page).to have_content(application1.address)
  expect(page).to have_content(application1.city)
  expect(page).to have_content(application1.state)
  expect(page).to have_content(application1.zip)
  expect(page).to have_content(application1.description)
  expect(page).to have_content(application1.application_status)
  
#   expect(page).to have_link(pet1.id)
    end

    it "I can add one or more pets to the applications" do 
      application1 = Application.create!(
        name: "Steve", 
        address: "5280 denver st",
        city: "Denver", 
        state: "Colorado", 
        zip: 80219, 
        description: "big yard, loving home", 
        application_status: "Pending"
        )

      shelter1 = Shelter.create!( 
        name: "Adopt a paw", 
        address: "123 Paw Ave",
        city: "Denver",
        state: "Colorado",
        zip: 80219 
        )

      pet1 = Pet.create!(
        image: "string",
        name:"Spot",
        approximate_age: 5, 
        description: "Rotweiler", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

      pet2 = Pet.create!(
        image:"string", 
        name: "Buddy", 
        approximate_age: 8, 
        description: "Golden Retriever", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

      pet3 = Pet.create!(
        image:"string", 
        name: "Nena", 
        approximate_age: 8, 
        description: "Lab", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

      visit "/applications/#{application1.id}" 

      fill_in "Pet Search", with: "Nena"
      click_button "Submit"

      expect(current_path).to eq("/applications/#{application1.id}")
      expect(page).to have_content("Nena")
    end
    it "Can see the names of pets with an 'adopt this pet' button" do 
      application1 = Application.create!(
        name: "Steve", 
        address: "5280 denver st",
        city: "Denver", 
        state: "Colorado", 
        zip: 80219, 
        description: "big yard, loving home", 
        application_status: "Pending"
        )

      shelter1 = Shelter.create!( 
        name: "Adopt a paw", 
        address: "123 Paw Ave",
        city: "Denver",
        state: "Colorado",
        zip: 80219 
        )

      pet1 = Pet.create!(
        image: "string",
        name:"Spot",
        approximate_age: 5, 
        description: "Rotweiler", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

      pet2 = Pet.create!(
        image:"string", 
        name: "Buddy", 
        approximate_age: 8, 
        description: "Golden Retriever", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

      pet3 = Pet.create!(
        image:"string", 
        name: "Nena", 
        approximate_age: 8, 
        description: "Lab", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

      visit "/applications/#{application1.id}"

      fill_in "Pet Search", with: "Nena"
      click_button "Submit"
   
      click_button "Adopt this Pet"
      expect(current_path).to eq("/applications/#{application1.id}")
      expect(page).to have_content(pet3.name)
    end
  end
end