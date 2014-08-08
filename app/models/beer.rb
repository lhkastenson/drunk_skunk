class Beer < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	validates :beerId, presence: true
	validates :styleId, presence: true
	validates :ibu, :numericality => {:greater_than => 0}, :allow_nil => true
	validates :abv, :numericality => {:greater_than => 0, :less_than => 100}, :allow_nil => true
	validates :originalGravity, :numericality => {:greater_than => 0}, :allow_nil => true
end
