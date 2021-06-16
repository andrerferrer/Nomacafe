class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review
  #belongs_to :cafe, through: :tables

  def booking_headline
    "#{table.cafe.name}, #{table.cafe.location}, #{table.name}, #{table.seat} #{(table.min_credits * (end_time - start_time))}"
  end

end
