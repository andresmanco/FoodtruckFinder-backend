class TruckSerializer < ActiveModel::Serializer
  attributes :id, name:, :type, :description, :pic, :location

  has_many :dishes
  has_many :reviews
end
