class FillOtherBeersColumns < ActiveRecord::Migration
  def change
  	remove_column :beers, :abv, :integer

  	add_column :beers, :description, :text
  	add_column :beers, :abv, :float
  	add_column :beers, :foodPairings, :string
  	add_column :beers, :originalGravity, :float
  	add_column :beers, :glasswareId, :integer
  	add_column :beers, :styleId, :integer
  	add_column :beers, :isOrginic, :boolean
  	add_column :beers, :servingTemperature, :float
  	add_column :beers, :status, :integer
  	add_column :beers, :statusDisplay, :string
  	add_column :beers, :beerVariationId, :string
  	add_column :beers, :year, :integer
  end
end
