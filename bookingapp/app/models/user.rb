class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :tour_followings, foreign_key: :user_id
  has_many :followed_tours, through: :tour_followings, source: :tour
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :image, presence: true
  validates :password_digest, presence: true

  has_secure_password
end
