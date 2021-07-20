class Foodtruck < ApplicationRecord
  belongs_to :user
  # has_many :bookings

  validates :name, :description, :food_type, :menu_package, :location, presence: true
  
end
