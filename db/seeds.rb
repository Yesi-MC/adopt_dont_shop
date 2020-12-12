# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all 
Shelter.destroy_all 
Application.destroy_all

shelter1 = Shelter.create!(
  name:"Adopt a paw", 
  address: "123 Paw Ave",
  city: "Denver",
  state: "Colorado",
  zip: 80219 )


  shelter1.pets.create!(
    image: "string",
    name:"Spot",
    approximate_age: 5, 
    description: "Rotweiler", 
    adoptable: true, 
    sex: 1
  )

  shelter1.pets.create!(
    image:"string", 
    name: "Buddy", 
    approximate_age: 8, 
    description: "Golden Retriever", 
    adoptable: true, 
    sex: 2 
  )

  application1 = Application.create!(
    name: "steve", 
    address: "5280 denver st",
    city: "Denver", 
    state: "Colorado", 
    zip: 80219, 
    description: "big yard, loving home", 
    pet_names: "Spot",
    application_status: "Pending"
  )

  application2 = Application.create!(
    name: "Korra", 
    address: "246 Drury Lane", 
    city: "Far Way", 
    state: "Wyoming", 
    description: "looking for a new dog",
    pet_names: "Buddy", 
    application_status: "Accepted"
  )