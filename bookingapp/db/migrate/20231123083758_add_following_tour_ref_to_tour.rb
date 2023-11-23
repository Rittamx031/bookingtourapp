class AddFollowingTourRefToTour < ActiveRecord::Migration[7.0]
  def change
    add_reference :following_tours, :tours, null: false, foreign_key: true
  end
end
