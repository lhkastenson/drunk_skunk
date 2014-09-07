class AddBeerIdColumnToBeers < ActiveRecord::Migration
  def change
  	create_table :beers do |t|
      t.string :name
      t.integer :abv
      t.string :style
      t.integer :ibu
    end
    add_column :beers, :beerId, :string
  end
end
