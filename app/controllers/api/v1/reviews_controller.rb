class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    review = Review.new(review_params)
    review.user_id = current_user.id
    review.rating = review.rating * 20

    if review.save
      review.rating = review.rating / 20
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
    if current_user.id === params["review"]["user_id"]
      if Review.update(params[:id], update_review)
        update_review["rating"] = update_review["rating"].to_i / 20
        render status: 200, json: update_review
      end
    else
      render status: 406, json: update_review
    end
  end

  def destroy
    
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment, :restaurant_id)
  end
end
