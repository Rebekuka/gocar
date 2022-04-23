class ChangeDurationToBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :duration
    add_column :bookings, :duration, :datetime
  end
end
