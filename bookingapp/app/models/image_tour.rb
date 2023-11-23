class ImageTour < ApplicationRecord
  belongs_to :tour, foreign_key: 'tours_id'
  validates :image_url, presence: true
end
