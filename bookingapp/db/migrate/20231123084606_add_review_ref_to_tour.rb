class AddReviewRefToTour < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :tours, null: false, foreign_key: true
  end
end
