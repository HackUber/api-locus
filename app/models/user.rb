class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :itineraries
  has_many :groups, through: :itineraries

  has_many :cars
end
