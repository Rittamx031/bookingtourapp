class FollowingTour < ApplicationRecord
  belongs_to :tour, foreign_key: 'tours_id'
  belongs_to :user,foreign_key: 'users_id'
end
