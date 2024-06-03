class AddReferencesToOffers < ActiveRecord::Migration[7.1]
  def change
    add_reference :offers, :user, foreign_key: true
    add_reference :offers, :goat, foreign_key: true
  end
end
