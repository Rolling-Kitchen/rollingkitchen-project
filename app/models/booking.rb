class Booking < ApplicationRecord
  belongs_to :foodtruck
  belongs_to :user

  enum status: [:available, :pending, :booked, :accepted, :rejected]
  validates :event_name, :event_details, :expected_attendees, :event_location, presence: true
  scope :long_title, -> { where("LENGTH(title) > 20") }

  def pending?
    status == 1
  end


end
