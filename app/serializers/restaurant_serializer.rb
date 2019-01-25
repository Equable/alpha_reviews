class RestaurantSerializer < ActiveModel::Serializer
  attributes :name, :street, :state, :zip, :city, :categories, :reviews

  def categories
    object.categories
  end

  def reviews
    object.reviews
  end
end
