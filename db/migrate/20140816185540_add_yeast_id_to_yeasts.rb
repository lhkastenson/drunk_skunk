class AddYeastIdToYeasts < ActiveRecord::Migration
  def change
    add_column :yeasts, :yeastType, :string
  end
end
