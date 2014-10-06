class Fermentable < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :brewery_db_fermentable_id, presence: true
end
