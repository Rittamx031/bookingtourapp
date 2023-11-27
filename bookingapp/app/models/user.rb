class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :following_tours, class_name: FollowingTour.name,
  foreign_key: :users_id, dependent: :destroy
  has_many :following, through: :following_tours, source: :tour
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :image, presence: true
  validates :password_digest, presence: true

  has_secure_password
end
