class CreateGoats < ActiveRecord::Migration[7.1]
  def change
    create_table :goats do |t|
      t.string :name
      t.integer :price
      t.string :color
      t.float :weight
      t.string :personality
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
