class CreateGoats < ActiveRecord::Migration[7.1]
  def change
    create_table :goats do |t|
      t.string :name
      t.float :price
      t.string :color
      t.float :weight
      t.string :personality
      t.float :age

      t.timestamps
    end
  end
end
