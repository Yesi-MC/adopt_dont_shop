# require 'rails_helper'

# RSpec.describe "Applications index page", type: features: do 
#   it "should display all applicants" do 
#     application1 = Application.create!(
#     name: "Steve", 
#     address: "5280 denver st",
#     city: "Denver", 
#     state: "Colorado", 
#     zip: 80219, 
#     description: "big yard, loving home", 
#     pet_names: "Spot",
#     application_status: "Pending"
#   )

#    application2 = Application.create!(
#     name: "Korra", 
#     address: "246 Drury Lane", 
#     city: "Far Way", 
#     state: "Wyoming", 
#     description: "looking for a new dog",
#     pet_names: "Buddy", 
#     application_status: "Accepted"
#   )

#     shelter1 = Shelter.create!(
#     name:"Adopt a paw", 
#     address: "123 Paw Ave",
#     city: "Denver",
#     state: "Colorado",
#     zip: 80219 )

#     shelter1.pets.create!(
#     image: "string",
#     name:"Spot",
#     approximate_age: 5, 
#     description: "Rotweiler", 
#     adoptable: true, 
#     sex: :female
#   )

#    shelter1.pets.create!(
#     image:"string", 
#     name: "Buddy", 
#     approximate_age: 8, 
#     description: "Golden Retriever", 
#     adoptable: true, 
#     sex: :male
#   )

#   PetApplications.create!()
#   end
# end