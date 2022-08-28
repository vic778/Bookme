class BookingType < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_rich_text :description
end
