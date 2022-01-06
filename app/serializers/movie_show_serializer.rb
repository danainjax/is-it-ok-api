class MovieShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :full_title, :image, :plot, :year, :stars, :runtime, :releaseDate, :director, :genres
  has_many :reviews
end
