class ReviewsController < ApplicationController

    def create
        review = logged_in_user.reviews.create!(review_params)
        render json: review
    end

    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: review
    end


private
    def review_params
        params.permit(:movie_id, :rating, :sex, :violence, :language, :comment, :id)
    end
end
