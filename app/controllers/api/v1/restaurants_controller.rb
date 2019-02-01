class Api::V1::RestaurantsController < ApplicationController
    protect_from_forgery unless: -> { request.format.json? }

    def show
      restaurant = Restaurant.find(params[:id])
      user = current_user
      render json: restaurant
    end
end
