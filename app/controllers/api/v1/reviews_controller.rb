class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    review = Review.new(review_params)
    review.user_id = current_user.id
    review.rating = review.rating * 20
    binding.pry

    if review.save
      render json: {review: review}
    else
      render json: {error: review.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    review = Review.find(params[:id])
    review.rating = review.rating / 20
    render json: review
  end

  def update
    update_review = review_params
    update_review["rating"] = update_review["rating"].to_i * 20
    Review.update(params[:id], update_review)
    render :template => 'restaurants/show.html.erb'
    # redirect_to restaurant_path(update_review["restaurant_id"])
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
