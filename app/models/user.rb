class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_one :cafe, dependent: :destroy
  has_one_attached :photo
  validates :nomacafe_type, presence: true, inclusion: {in: ["cafe", "nomad"]}

  has_many :favourites
  has_many :favourite_cafes, source: :favouritable, source_type: "Cafe", through: :favourites, foreign_key: :favouritable_id
  has_many :favourite_users, source: :favouritable, source_type: "User", through: :favourites, foreign_key: :favouritable_id

  has_many :favourites_as_favouritable, class_name:"Favourite", as: :favouritable


  def is_cafe_owner?
    cafe.present?

  end



end
