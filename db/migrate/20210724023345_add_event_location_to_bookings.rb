class AddEventLocationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :event_location, :string
  end
end
