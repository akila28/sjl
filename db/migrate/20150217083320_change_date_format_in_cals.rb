class ChangeDateFormatInCals < ActiveRecord::Migration
  def up
     change_column :cals, :no_of_days, :integer
  end

  def down
    change_column :cals, :no_of_days, :date
  end
end
