class Application < ApplicationRecord
  validates_presence_of :name, :address, :city, :state, :zip
  has_many :pet_applications
  has_many :pets, through: :pet_applications
end