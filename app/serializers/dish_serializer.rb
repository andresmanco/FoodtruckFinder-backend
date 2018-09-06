class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :pic

  belongs_to :truck
end
