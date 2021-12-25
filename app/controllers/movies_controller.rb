class MoviesController < ApplicationController

    def index
        
        movies = Movie.all
        render json: movies
    end

    def show
        movie =  Movie.find(params[:id])
        render json: movie, serializer: MovieShowSerializer
    end

    # def popular 
    #     Imdb.most_popular()
    #     movies = Movie.all
    #     render json: movies
    # end
end
