class MoviesController < ApplicationController

    def index
        movies = Movie.all
        render json: movies
    end

    def popular 
        Imdb.most_popular()
        movies = Movie.all
        render json: movies
    end
end
