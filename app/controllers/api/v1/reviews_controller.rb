class Api::V1::ReviewsController < ApplicationController
    protect_from_forgery unless: -> { request.format.json? }

    def show
      reviews = Review.where(restaurant_id: params[:id])
      render json: reviews
    end

end
