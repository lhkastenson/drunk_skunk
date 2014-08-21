class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.integer :yeastId
      t.string :name
      t.text :description
      t.float :attenuationMin
      t.float :attenuationMax
      t.float :fermentTempMin
      t.float :fermentTempMax
      t.float :alcoholToleranceMin
      t.float :alcoholToleranceMax
      t.string :productId
      t.string :yeastFormat
      t.string :category
      t.string :categoryDisplay

      t.timestamps
    end
  end
end
