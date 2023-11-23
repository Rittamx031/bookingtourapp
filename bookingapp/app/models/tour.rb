
class Tour < ApplicationRecord
  belongs_to :tour_category, foreign_key: :tour_category_id
  has_many :tour_details, dependent: :destroy
  has_one :image_tour
  has_many :reviews
  has_many :tour_followings, foreign_key: :tour_id ,class_name: TourFollowing.name
  has_many :followed_users, through: :tour_followings, source: :user

  # has_many :tours, dependent: :destroy
  validates :tour_name, presence: true
  validates :time_duration, presence: true

end
