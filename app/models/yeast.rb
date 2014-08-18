class Yeast < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :yeastId, presence: true
end
