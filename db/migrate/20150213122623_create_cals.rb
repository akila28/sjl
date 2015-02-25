class CreateCals < ActiveRecord::Migration
  def change
    create_table :cals do |t|
      t.string :customer_name
      t.date :opening_date
      t.float :roi
      t.integer :amount
      t.string :transaction_type
      t.string :jewel_detail
      t.float :gross_weight
      t.float :net_weight
      t.integer :appraised_amount
      t.date :no_of_days
      t.date :closing_date

      t.timestamps null: false
    end
  end
end
