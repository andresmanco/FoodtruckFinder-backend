class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :date, :user_id
  belongs_to :truck
  belongs_to :user
end
