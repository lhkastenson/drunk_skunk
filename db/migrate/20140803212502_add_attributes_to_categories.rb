class AddAttributesToCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :categoryId, :integer
  end
end
