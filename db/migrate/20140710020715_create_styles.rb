class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :styleId
      t.string :name
      t.text :description
      t.integer :categoryId
      t.string :category
      t.integer :ibuMin
      t.integer :ibuMax
      t.float :abvMin
      t.float :abvMax
      t.integer :srmMin
      t.integer :srmMax
      t.float :ogMin
      t.float :ogMax
      t.float :fgMin
      t.float :fgMax

      t.timestamps
    end
  end
end
