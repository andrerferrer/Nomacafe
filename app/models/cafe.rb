class Cafe < ApplicationRecord
  belongs_to :user
  has_many :tables, dependent: :destroy
  has_many :bookings, through: :tables
  has_many :reviews, through: :bookings

  validates :name, :location, presence: true
  has_one_attached :photo

  has_many :favourites, as: :favouritable
  has_many :favourited_by_users, class_name:"User", through: :favourites, foreign_key: :favouritable_id

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
