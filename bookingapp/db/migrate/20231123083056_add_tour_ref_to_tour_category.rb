class AddTourRefToTourCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :tours, :tour_categories, null: true, foreign_key: true
  end
end
