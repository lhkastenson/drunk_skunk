class AddImagesToBeers < ActiveRecord::Migration
  def change
    create_table :labels do |t|
    	t.string :beerId
      t.string :small
      t.string :medium
      t.string :large
    end
  end
end
