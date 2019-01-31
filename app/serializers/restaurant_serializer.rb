class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :state, :zip, :city, :categories, :reviews, :user

  def categories
    object.categories
  end

  def user
    current_user
  end

  def reviews
    reviews=[]
    object.reviews.each do |review|

      if current_user && review.votes.where(user_id: current_user.id, review_id: review.id).first.status
        vote_status = 1
        vote_id = review.votes.where(user_id: current_user.id, review_id: review.id).first.id
      elsif current_user && !review.votes.where(user_id: current_user.id, review_id: review.id).first
        vote_status = -1
        vote_id = review.votes.where(user_id: current_user.id, review_id: review.id).first.id
      else
        vote_status = 0
        vote_id = nil
      end

      reviews << {
        comment: review.comment,
        id: review.id,
        restaurant_id: review.restaurant_id,
        rating: review.rating/20,
        user_id: review.user_id,
        upvotes: review.votes.where(status: true).count,
        downvotes: review.votes.where(status: false).count,
        vote_status: vote_status,
        vote_id: vote_id
      }

    end
    return reviews
  end
end
