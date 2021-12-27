class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :city, :state, :password_digest
end
