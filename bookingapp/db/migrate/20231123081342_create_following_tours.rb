class CreateFollowingTours < ActiveRecord::Migration[7.0]
  def change
    create_table :following_tours do |t|
      t.timestamps
    end
  end
end
