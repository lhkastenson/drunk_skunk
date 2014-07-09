class Beer < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :style, presence: true
end
