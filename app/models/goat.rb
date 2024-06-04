class Goat < ApplicationRecord
  belongs_to :user
  has_many :offers
  has_one_attached :photo

  validates :name, :price, :color, :weight, :personality, :age, presence: true
end
