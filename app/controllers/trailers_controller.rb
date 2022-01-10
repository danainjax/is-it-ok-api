class TrailersController < ApplicationController


    def create
        trailer = Trailer.create(trailer_params)
        render json: trailer
    end

    def show
        trailer = Trailer.find(params[:id])
        render json: trailer
    end



    private
    def trailer_params
        params.permit(:id)
    end
end
