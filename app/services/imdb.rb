class Imdb 

    def self.playing_now
        url = "https://imdb-api.com/en/API/InTheaters/" 
        response = RestClient.get(url + ENV["IMDB_API_KEY"])
        @movies = JSON.parse(response)
        # byebug
         @movies["items"].each do |movie|
            Movie.create( title: movie["title"], director: movie["directors"], full_title: movie["fullTitle"], genres: movie["genres"], plot: movie["plot"], runtime: movie["runtimeStr"], stars: movie["stars"], year: movie["year"], releaseDate: movie["releaseState"], contentRating: movie["contentRating"], image: movie["image"])
        end
    end

    def self.most_popular 
            url = "https://imdb-api.com/en/API/MostPopularMovies/" 
            response = RestClient.get(url + ENV["IMDB_API_KEY"])
            @movies = JSON.parse(response)
            # byebug
            @movies["items"].each do |movie|
                Movie.create( title: movie["title"], rank: movie["rank"], year: movie["year"], crew: movie["crew"], image: movie["image"], imdb_rating: movie["imDbRating"], tt_id: movie["id"])
            end
        end

        def self.trailer(id)
            url = "https://imdb-api.com/en/API/Trailer/"
            response = RestClient.get(url + ENV["IMDB_API_KEY"] + "/" + id)
            trailer = JSON.parse(response)
            Trailer.create( tt_id: trailer["imDbId"], title: trailer["title"], video_title: trailer["videoTitle"], video_description: trailer["videoDescription"], link_embed: trailer["linkEmbed"])

        end

        def self.movie_details(id)
            # pass in id as tt_id as a string, example: "tt2382320"
            url = "https://imdb-api.com/en/API/Title/"
            response = RestClient.get(url + ENV["IMDB_API_KEY"] + "/" + id)
            movie = JSON.parse(response)
            # write the code here to take the movie and create a movie details object that belongs to the particular movie
            # Need a Movie Details controller/resource/model/serializer
            print movie
            

        end
        
end
        

    




