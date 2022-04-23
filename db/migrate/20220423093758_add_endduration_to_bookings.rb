class AddEnddurationToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :endduration, :integer
  end
end
