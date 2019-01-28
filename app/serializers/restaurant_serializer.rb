class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :street, :state, :zip, :city, :categories

  def categories
    object.categories
  end
end
