class RestaurantSerializer < ActiveModel::Serializer
  attributes :name, :street, :state, :zip, :categories

  def categories
    object.categories
  end
end
