class Hop < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :brewery_db_hop_id, presence: true
end
