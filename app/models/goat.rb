class Goat < ApplicationRecord
  belongs_to :user
  has_many :offers

  validates :name, :price, :color, :weight, :personality, :age, presence: true
end
