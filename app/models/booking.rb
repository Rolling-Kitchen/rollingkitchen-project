class Booking < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

  validates :event_name, :event_details, :expected_attendees, :event_location, presence: true


end
