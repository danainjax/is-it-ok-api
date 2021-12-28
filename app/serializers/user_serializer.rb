class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :state
end
