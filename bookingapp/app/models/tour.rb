
class Tour < ApplicationRecord
  belongs_to :tour_category, foreign_key: 'tour_categories_id'
  has_one :tour_detail
  has_one :image_tour
  has_many :reviews
  has_many :followed_tours, class_name: FollowingTour.name,
  foreign_key: :users_id, dependent: :destroy
  has_many :followers, through: :followed_tours, source: :user
  validates :tour_name, presence: true
  validates :time_duration, presence: true
end
