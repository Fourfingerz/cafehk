class CategoriesController < ApplicationController
	def index
		#This is temporary
		@categories = Category.all
	end

	def show
		#May add detailed food item page if you so please 
	end

	def new
	end

	def create
	end

end