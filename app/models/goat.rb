class Goat < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :photo
  has_many :reviews

  validates :name, :price, :color, :weight, :personality, :age, presence: true
end
