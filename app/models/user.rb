class User < ApplicationRecord
  has_many :goats, dependent: :destroy
  has_many :offers
  has_many :offers_for_goats, through: :goats, source: :offers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
