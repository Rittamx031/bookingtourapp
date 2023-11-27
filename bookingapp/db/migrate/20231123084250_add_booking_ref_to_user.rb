class AddBookingRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :users, null: false, foreign_key: true
  end
end
