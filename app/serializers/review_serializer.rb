class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :language, :sex, :violence, :comment, :name
  

  def name
    self.object.user.name
  end
end
