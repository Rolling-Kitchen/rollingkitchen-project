class Booking < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

  enum status: [:available, :pending, :booked]
  validates :event_name, :event_details, :expected_attendees, :event_location, presence: true

end
