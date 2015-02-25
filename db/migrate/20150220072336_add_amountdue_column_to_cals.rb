class AddAmountdueColumnToCals < ActiveRecord::Migration
  def change
    add_column :cals, :amount_due, :integer
  end
end
