class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :foodtrucks, dependent: :destroy
  has_many :bookings
  has_many :bookings_as_owner, through: :foodtrucks,  source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :last_name, on: :create, message: "can't be blank"
  has_one_attached :photo
end