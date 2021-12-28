class UsersController < ApplicationController
    # before_action :set_user


    def index
        users = User.all 
        render json: users
    end

    def create
        puts user_params
        user = User.create(user_params)
        if user.save
            render_user_with_token(user)
        else
            render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
           
    end

    def show
        
        user = User.new(user_params)
        if user.save
            render_user_with_token(user)
        else
            render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:name, :email, :city, :state, :id, :password)
    end

    # def set_user
    #     user = User.find_by_id(params[:id])
    # end

end
