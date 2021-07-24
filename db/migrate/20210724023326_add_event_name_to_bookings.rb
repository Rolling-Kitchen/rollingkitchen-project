class AddEventNameToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :event_name, :string
  end
end
