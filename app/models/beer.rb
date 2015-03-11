class Beer < ActiveRecord::Base
	validates :name,  presence: true, length: { maximum: 50 }
	validates :brewery_db_beer_id, presence: true
	validates :brewery_db_style_id, presence: true
	validates :user_id, presence: true
	validates :ibu, :numericality => {:greater_than => 0}, :allow_nil => true
	validates :abv, :numericality => {:greater_than => 0, :less_than => 100}, :allow_nil => true
	validates :original_gravity, :numericality => {:greater_than => 0}, :allow_nil => true
	
	belongs_to :user
end
