class Booking < ApplicationRecord
  belongs_to :tour_detail ,foreign_key: :tour_detail_id
  belongs_to :user ,foreign_key: 'user_id'



  enum status: {
    pending: 0,
    confirmed: 1,
    canceled: 2
  }
  validates :phone, presence: true
end
