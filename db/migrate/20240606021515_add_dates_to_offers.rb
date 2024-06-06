class AddDatesToOffers < ActiveRecord::Migration[7.1]
  def change
    add_column :offers, :start_date, :date
    add_column :offers, :end_date, :date
    add_column :offers, :comment, :string
  end
end
