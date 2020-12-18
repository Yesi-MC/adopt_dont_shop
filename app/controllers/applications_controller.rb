class ApplicationsController < ApplicationController
  def show 
    @application = Application.find(params[:id])
    if params["Pet Search"]
      @pet = Pet.find_by(name: params["Pet Search"])
    else
      @pet = nil
    end
  end

  def create 
    application = Application.new({
    name: params[:name],
    address: params[:address],
    city: params[:city],
    state: params[:state],
    zip: params[:zip],
    description: params[:description]
    })
    if application.save
      redirect_to "/applications/#{application.id}"
    else 
      flash[:notice] = "Please fill in all fields"
      render :new
    end 
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update 
    @application = Application.find(params[:id])
    @application.update({description: params[:Describe], application_status: "Pending"})
    @application.save 
    redirect_to "/applications/#{@application.id}"
  end
end