class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :date
  belongs_to :truck
  belongs_to :user
end
