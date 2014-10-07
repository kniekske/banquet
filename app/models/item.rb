class Item < ActiveRecord::Base
	belongs_to :order
	has_many :ingredients
end
