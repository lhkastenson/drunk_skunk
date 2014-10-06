class Label < ActiveRecord::Base
	  validates :brewery_db_beer_id, presence: true
end
