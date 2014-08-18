class CreateFermentables < ActiveRecord::Migration
  def change
    create_table :fermentables do |t|
      t.integer :fermentableId
      t.string :name
      t.text :description
      t.string :countryOfOrigin
      t.integer :srmId
      t.integer :srmPrecise
      t.float :moistureContent
      t.float :coarseFineDifference
      t.float :diastaticPower
      t.float :dryYield
      t.float :potential
      t.float :protein
      t.float :solubleNitrogenRatio
      t.integer :maxInBatch
      t.boolean :requiresMashing
      t.string :category
      t.string :categoryDisplay

      t.timestamps
    end
  end
end
