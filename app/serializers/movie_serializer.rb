class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :full_title, :image, :plot, :year, :stars, :runtime, :releaseDate, :director, :genres
end
