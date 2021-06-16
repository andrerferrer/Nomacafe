class Cafe < ApplicationRecord
  belongs_to :user
  has_many :tables, dependent: :destroy
  has_many :bookings, through: :tables
  has_many :reviews, through: :bookings
  validates :name, :location, presence: true
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
