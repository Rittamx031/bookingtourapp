# app/models/review.rb

class Review < ApplicationRecord
  belongs_to :user ,foreign_key: :user_id
  belongs_to :tour ,foreign_key: :tour_id
  has_many :image_reviews

  validates :review_text, presence: true
  # Add any additional validations as needed
end
