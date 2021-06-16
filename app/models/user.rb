class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_one :cafe, dependent: :destroy
  has_one_attached :photo


  def is_cafe_owner?
    cafe.present?

  end

end
