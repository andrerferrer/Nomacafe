class Table < ApplicationRecord
  belongs_to :cafe
  has_many :bookings
end
