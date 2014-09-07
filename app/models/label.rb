class Label < ActiveRecord::Base
	  validates :beerId, presence: true
end
