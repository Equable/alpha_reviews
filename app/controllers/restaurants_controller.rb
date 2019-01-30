class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new()
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		if @restaurant.save
			flash[:notice] = "Restaurant added successfully!"
			redirect_to @restaurant
		else
			flash[:notice] = @restaurant.errors.full_messages.join(", ")
			render :new
		end
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.destroy
			flash[:notice] = "Restaurant deleted successfully"
			redirect_to restaurants_path
		else
			flash[:notice] = "ERROR: Restaurant was not deleted"
			render :index
		end
	end

	private

	def restaurant_params
		params.require(:restaurant).permit(:name, :street, :city, :state, :zip, :description)
	end
end
