class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic, :price, :description

  belongs_to :truck
end
