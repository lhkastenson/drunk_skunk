class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.integer :hopId
      t.string :name
      t.text :description
      t.string :countryOfOrigin
      t.float :alphaAcidMin
      t.float :alphaAcidMax
      t.float :betaAcidMin
      t.float :betaAcidMax
      t.float :humuleneMin
      t.float :humuleneMax
      t.float :caryophylleneMin
      t.float :caryophylleneMax
      t.float :cohumuloneMin
      t.float :cohumuloneMax
      t.float :myrceneMin
      t.float :myrceneMax
      t.float :farneseneMin
      t.float :farneseneMax
      t.boolean :isNoble
      t.boolean :forBittering
      t.boolean :forFlavor
      t.boolean :forAroma
      t.string :category
      t.string :categoryDisplay
      
      t.timestamps
    end
  end
end
