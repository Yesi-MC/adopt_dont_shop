class ApplicationsController < ApplicationController
  def index 
    @applications = Application.all 
  end

  def show 
    @application = Application.find(params[:id])
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
endgit 