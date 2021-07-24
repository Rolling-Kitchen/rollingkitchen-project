class AddExpectedAttendeesToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :expected_attendees, :string
  end
end
