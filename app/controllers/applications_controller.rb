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
    application.save
    # require 'pry'; binding.pry

    redirect_to "/applications/#{application.id}"
  end
end