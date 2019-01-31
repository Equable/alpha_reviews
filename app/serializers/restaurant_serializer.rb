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
      reviews << {
        comment: review.comment,
        id: review.id,
        restaurant_id: review.restaurant_id,
        rating: review.rating/20,
        user_id: review.user_id
      }
    end
    return reviews
  end
end
