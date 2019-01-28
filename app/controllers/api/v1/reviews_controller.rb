class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    review = Review.new(review_params)
    review.user_id = current_user.id
    review.rating = review.rating * 20

    if review.save
      render json: {review: review}
    else
      render json: {error: review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def edit
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end

  def update
    binding.pry
    review = Review.find(params[:id])

  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
