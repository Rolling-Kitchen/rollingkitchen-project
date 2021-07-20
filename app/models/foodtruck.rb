class Foodtruck < ApplicationRecord
  belongs_to :user
  # has_many :bookings
  has_many_attached :photos

  validates :name, :description, :food_type, :menu_package, :location, presence: true

end
