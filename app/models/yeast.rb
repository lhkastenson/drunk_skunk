class Yeast < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :brewery_db_yeast_id, presence: true
end
