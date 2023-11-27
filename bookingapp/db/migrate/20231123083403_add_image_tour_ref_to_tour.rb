class AddImageTourRefToTour < ActiveRecord::Migration[7.0]
  def change
    add_reference :image_tours, :tours, null: false, foreign_key: true
  end
end
