class AddStatusColumnToCals < ActiveRecord::Migration
  def change
    add_column :cals, :status, :string
  end
end
