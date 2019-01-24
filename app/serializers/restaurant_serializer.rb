class RestaurantSerializer < ActiveModel::Serializer
  attributes :name, :street, :state, :zip, :city, :categories

  def categories
    object.categories
  end
end
