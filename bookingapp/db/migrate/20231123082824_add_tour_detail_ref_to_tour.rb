class AddTourDetailRefToTour < ActiveRecord::Migration[7.0]
  def change
    add_reference :tour_details, :tours, null: false, foreign_key: true
  end
end
