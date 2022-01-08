class MovieSerializer < ActiveModel::Serializer
  attributes  :rank, :title, :image, :crew, :imdb_rating, :tt_id, :id
end
