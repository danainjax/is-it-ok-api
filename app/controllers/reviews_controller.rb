class ReviewsController < ApplicationController

    def create
        review = logged_in_user.reviews.create!(review_params)
        render json: review
    end

    # def index
    #     reviews = Review.all
    #     render json: reviews
    # end



private
    def review_params
        params.permit(:movie_id, :rating, :sex, :violence, :language, :comment)
    end
end
