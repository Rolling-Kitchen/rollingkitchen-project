class Foodtruck < ApplicationRecord
  include PgSearch::Model

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates_presence_of :name, :description, :food_type, :food_price, :menu_package, :location, on: :create, message: "can't be blank"
  
  pg_search_scope :search_by_location_and_name,
    against: [ :food_type, :location, :name ],
    using: {
      tsearch: { prefix: true }
    }
end
