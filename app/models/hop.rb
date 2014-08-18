class Hop < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :hopId, presence: true
end
