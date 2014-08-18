class Fermentable < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :fermentableId, presence: true
end
