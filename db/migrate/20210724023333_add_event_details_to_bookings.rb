class AddEventDetailsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :event_details, :string
  end
end
