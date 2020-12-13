# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PetApplication.destroy_all
Pet.destroy_all 
Shelter.destroy_all 
Application.destroy_all

  shelter1 = Shelter.create!(
        name:"Adopt a paw", 
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

  pet2 = Pet.create!(
        image: "string", 
        name: "Courage", 
        approximate_age: 9,
        description: "Pink Beagle", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  pet3 = Pet.create!(
        image: "string", 
        name: "Appa", 
        approximate_age: 3,
        description: "Poodle", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  pet4 = Pet.create!(
        image: "string", 
        name: "Momo", 
        approximate_age: 2,
        description: "Corgi", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

  pet5 = Pet.create!(
        image: "string", 
        name: "Scooby", 
        approximate_age: 6,
        description: "Great Dane", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  application1 = Application.create!(
        name: "Steve", 
        address: "5280 denver st",
        city: "Denver", 
        state: "Colorado", 
        zip: 80219, 
        description: "big yard, loving home", 
        plication_status: "Pending"
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

  application3 = Application.create!(
        name: "Aang", 
        address: "923 Avatar St.", 
        city: "Air Temple", 
        state: "Michigan", 
        zip: 80216, 
        description: "looking to expand my family",
        application_status: "In Progress"
        )

  application4 = Application.create!(
        name: "Sokka", 
        address: "456 ", 
        city: "New York", 
        state: "New York",
        zip: 80239, 
        description: "looking for a new companion",
        application_status: "Rejected"
        )

  application5 = Application.create!(
        name: "Muriel", 
        address: "346 Scary Ct.", 
        city: "Nowhere", 
        state: "Kansas",
        zip: 80201, 
        description: "looking for a companion and guard dog for my farm",
        application_status: "Accepted"  
        )

  PetApplication.create!(
        application_id: application1.id,
        pet_id: pet1.id
        )

  PetApplication.create!(
        application_id: application1.id,
        pet_id: pet1.id
        )

  PetApplication.create!(
        application_id: application1.id,
        pet_id: pet1.id
        )


