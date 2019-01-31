class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :state, :zip, :city, :categories, :reviews

  def categories
    object.categories
  end

  def reviews
    reviews=[]
    object.reviews.each do |review|
      reviews << {
        comment: review.comment,
        id: review.id,
        restaurant_id: review.restaurant_id,
        rating: review.rating/20,
        user_id: review.user_id,
        upvotes: review.votes.where(status: true).count,
        downvotes: review.votes.where(status: false).count,
        vote_status: false,
        vote_id: false
      }
      
      if current_user
        review[:vote_status] = review.votes.where(user_id: current_user.id, review_id: review.id).first.status
        review[:vote_id] = review.votes.where(user_id: current_user.id, review_id: review.id).first.id
      end



      if review[:vote_status]
        review[:vote_status] = 1
      elsif !review[:vote_status]
        review[:vote_status] = -1
      end
    end

    return reviews
  end
end
