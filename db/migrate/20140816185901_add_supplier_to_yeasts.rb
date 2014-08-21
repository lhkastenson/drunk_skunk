class AddSupplierToYeasts < ActiveRecord::Migration
  def change
  	add_column :yeasts, :supplier, :string
  end
end
