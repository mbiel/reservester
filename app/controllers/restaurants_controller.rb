class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant])

		if @restaurant.save
			redirect_to @restaurant
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def index
		@restaurants = Restaurant.all
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])

		if @restaurant.update(params[:restaurant])
			redirect_to @restaurant
		else
			render 'edit'
		end
	end

	
end
