class Trailer < ApplicationRecord
    # belongs_to :movie

    def self.get_trailers
        movies = Movie.all
        trailers = movies.map{|movie| movie.tt_id}
        trailers.each do |id|
            Imdb.trailer(id)
        end
    end
end
