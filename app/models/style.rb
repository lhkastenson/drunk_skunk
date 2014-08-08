class Style < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	validates :styleId, presence: true
  validates :categoryId, presence: true
	validates :ibuMin, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :ibuMax, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :abvMin, :numericality => {:greater_than_or_equal_to => 0}, :numericality => {:less_than_or_equal_to => 100}, :allow_nil => true
	validates :abvMax, :numericality => {:greater_than_or_equal_to => 0}, :numericality => {:less_than_or_equal_to => 100}, :allow_nil => true
	validates :ogMin, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :ogMax, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
end
