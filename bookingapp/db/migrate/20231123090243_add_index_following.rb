class AddIndexFollowing < ActiveRecord::Migration[7.0]
  def change
    add_index :following_tours, [:tours_id, :users_id], unique: true
  end
end
