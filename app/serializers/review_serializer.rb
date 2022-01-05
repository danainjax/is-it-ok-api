class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :language, :sex, :violence, :comment
  has_one :user
  has_one :movie
end
