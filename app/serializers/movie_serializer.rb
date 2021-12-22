class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :stars, :genres
end
