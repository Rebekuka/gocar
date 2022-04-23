class ChangeEnddurationagainToBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :endduration
    add_column :bookings, :endduration, :date
  end
end
