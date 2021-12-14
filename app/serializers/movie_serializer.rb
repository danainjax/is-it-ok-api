class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :plot, :year, :stars, :runtime, :releaseDate, :director, :genres
end
