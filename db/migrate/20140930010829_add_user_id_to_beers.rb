class AddUserIdToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :userId, :integer
  end
end
