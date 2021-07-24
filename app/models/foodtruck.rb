class Foodtruck < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates_presence_of :name, :description, :food_type, :menu_package, :location, on: :create, message: "can't be blank"

end
