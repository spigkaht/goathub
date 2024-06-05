class AddGoatsToReviews < ActiveRecord::Migration[7.1]
  def change
    add_reference :reviews, :goat, foreign_key: true
    add_reference :reviews, :user, foreign_key: true
    rename_column :reviews, :name, :content
  end
end
