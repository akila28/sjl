class RemoveAmountdueFromCals < ActiveRecord::Migration
  def change
    remove_column :cals, :Amount_due, :integer
  end
end
