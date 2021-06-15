class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review
  has_one :cafe, through: :table
end
