
class ImageReview < ApplicationRecord
  belongs_to :review , foreign_key: 'reviews_id'

  validates :image_url, presence: true
end
