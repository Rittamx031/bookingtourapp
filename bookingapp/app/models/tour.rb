# app/models/tour.rb

class Tour < ApplicationRecord
  belongs_to :tour_category, foreign_key: 'tour_categories_id'
  has_one :tour_detail
  has_one :image_tour
  has_many :reviews

  validates :tour_name, presence: true
  validates :time_duration, presence: true
  # Add any other validations as needed

  # Other model configurations, if any
end
