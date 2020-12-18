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
        image: "https://i.pinimg.com/originals/59/f5/2f/59f52f43a4abd0b0736609142c9c77a1.jpg",
        name:"Spot",
        approximate_age: 5, 
        description: "Rotweiler", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

  pet2 = Pet.create!(
        image: " https://i.pinimg.com/originals/53/71/17/5371173b2f070d7729e27808a52201fa.jpg", 
        name: "Buddy", 
        approximate_age: 8, 
        description: "Golden Retriever", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  pet2 = Pet.create!(
        image: "https://i.pinimg.com/originals/fe/48/fb/fe48fbeb1a3bf62bf44c10882611017a.jpg",
        name: "Courage", 
        approximate_age: 9,
        description: "Pink Beagle", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  pet3 = Pet.create!(
        image: "https://assets.cosplaycentral.com/Appa-Doggo-Cosplay.jpg/BROK/resize/1200x1200%3E/format/jpg/quality/70/Appa-Doggo-Cosplay.jpg",
        name: "Appa", 
        approximate_age: 3,
        description: "Poodle", 
        adoptable: true, 
        sex: :male,
        shelter_id: shelter1.id
        )

  pet4 = Pet.create!(
        image: "https://doxiequeen1.files.wordpress.com/2013/07/dsc_0996.jpg",
        name: "Momo", 
        approximate_age: 2,
        description: "Corgi", 
        adoptable: true, 
        sex: :female,
        shelter_id: shelter1.id
        )

  pet5 = Pet.create!(
        image: "https://vittlesvault.com/wp-content/uploads/2017/10/DIY-Scooby-Doo-Dog-Halloween-Costume.jpg",
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
      

