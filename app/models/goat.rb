class Goat < ApplicationRecord
  belongs_to :user
  validates :name, :price, :color, :weight, :personality, :age, presence: true
end
