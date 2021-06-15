class Review < ApplicationRecord
  validates :rating, :content, presence: true
  belongs_to :booking, optional: true
end
