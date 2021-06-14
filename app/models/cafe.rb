class Cafe < ApplicationRecord
  belongs_to :user
  has_many :tables
  has_many :bookings, through: :cafes

end
