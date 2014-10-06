class Style < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	validates :brewery_db_style_id, presence: true
  validates :brewery_db_category_id, presence: true
	validates :ibu_min, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :ibu_max, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :abv_min, :numericality => {:greater_than_or_equal_to => 0}, :numericality => {:less_than_or_equal_to => 100}, :allow_nil => true
	validates :abv_max, :numericality => {:greater_than_or_equal_to => 0}, :numericality => {:less_than_or_equal_to => 100}, :allow_nil => true
	validates :og_min, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
	validates :og_max, :numericality => {:greater_than_or_equal_to => 0}, :allow_nil => true
end
