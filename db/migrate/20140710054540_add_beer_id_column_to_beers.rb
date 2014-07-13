class AddBeerIdColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :beerId, :string
  end
end
