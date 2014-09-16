class Item < ActiveRecord::Base
	belongs_to :admin
	has_one :category
	validates :name, presence: true
	validates :price, presence: true
end
