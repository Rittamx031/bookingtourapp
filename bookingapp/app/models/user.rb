class User < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :following_tours

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :image, presence: true
  validates :password_digest, presence: true

  has_secure_password
end
