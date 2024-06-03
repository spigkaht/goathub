class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :goat

  validates :price, presence: true
  enum :status, [ :draft, :confirmed, :rejected ]
end
