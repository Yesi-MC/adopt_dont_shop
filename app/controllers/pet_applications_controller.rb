class PetApplicationsController < ApplicationController
  def create 
    # require 'pry'; binding.pry
    pet = Pet.find(params[:pet_id])
    app = Application.find(params[:app_id])

    pet_app = PetApplication.new(pet_id: pet.id, application_id: app.id)
    pet_app.save 

    redirect_to "/applications/#{app.id}"
  end

end