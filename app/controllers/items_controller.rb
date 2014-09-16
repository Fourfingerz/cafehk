class ItemsController < ApplicationController
	def index
		#This is temporary
		@items = Item.order(updated_at: :desc).limit(25)
	end

	def show
	end

	def new
	end

	def create
	end

end