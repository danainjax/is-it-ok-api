class MovieShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :year, :tt_id, :rank, :crew, :imdb_rating
  has_many :reviews
end
