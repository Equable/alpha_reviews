class RestaurantSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :name, :street, :state, :zip, :city, :categories, :reviews, :user
=======
  attributes :id, :name, :street, :state, :zip, :city, :categories, :reviews, :user, :commented
>>>>>>> 39dc30fb582990552df40461c0bad1b4c591cb8f

  def categories
    object.categories
  end

  def user
    current_user
  end

  def reviews
    reviews=[]
    object.reviews.each do |review|

      begin 
        vote = review.votes.where(user_id: current_user.id, review_id: review.id).first
        if vote.status == true
          vote_status = 1
          vote_id = vote.id
        elsif vote.status == false
          vote_status = -1
          vote_id = vote.id
        end
      rescue
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

  def commented
    if current_user
      object.reviews.each do |review|
        if review.user_id === current_user.id
          return true
        end
      end
    end
    return false
  end
end
