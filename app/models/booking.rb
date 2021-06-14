class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review
  belongs_to :cafe, through: :tables
end
