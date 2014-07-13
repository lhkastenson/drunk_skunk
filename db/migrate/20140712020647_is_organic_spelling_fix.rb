class IsOrganicSpellingFix < ActiveRecord::Migration
  def change
  	rename_column :beers, :isOrginic, :isOrganic
  end
end
