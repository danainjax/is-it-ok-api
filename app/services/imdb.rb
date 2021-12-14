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
                Movie.create( title: movie["title"], director: movie["directors"], full_title: movie["fullTitle"], genres: movie["genres"], plot: movie["plot"], runtime: movie["runtimeStr"], stars: movie["stars"], year: movie["year"], releaseDate: movie["releaseState"], contentRating: movie["contentRating"], image: movie["image"])
            end
        end

        
        
end
        

    




