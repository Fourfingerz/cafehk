class Item < ActiveRecord::Base
	belongs_to :admin
	has_one :category, through: :item_category
	has_one :item_category
	validates :name, presence: true
	validates :price, presence: true
end
