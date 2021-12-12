class Imdb 

    def self.playing_now
        url = "https://imdb-api.com/en/API/InTheaters/" 
        response = RestClient.get(url + ENV["IMDB_API_KEY"])
        @movies = JSON.parse(response)
        # byebug
         @movies["items"].each do |movie|
            Movie.create( title: movie["title"], image: movie["image"])
         end
         
    end
        

    



end
