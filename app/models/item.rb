class Item < ActiveRecord::Base
	belongs_to :AdminUser
	has_many :categories, through: :item_categories
	has_many :item_categories
	validates :itemname, presence: true
	validates :price, presence: true
end
