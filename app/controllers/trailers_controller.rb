class TrailersController < ApplicationController


    def create
        trailer = Trailer.create(trailer_params)
        render json: trailer
    end

    def show
        trailer = Trailer.find(params[:tt_id])
        render json: trailer
    end

    def index
        trailers = Trailer.all
        render json: trailers
    end




    private
    def trailer_params
        params.permit(:id)
    end
end
