class TruckSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_type, :description, :pic, :location

  has_many :dishes
  has_many :reviews
end
