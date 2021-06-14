class Cafe < ApplicationRecord
  belongs_to :user
  has_many :tables
  has_many :bookings, through: :cafes
  validates :name, :location, presence: true
  has_one_attached :photo
end
