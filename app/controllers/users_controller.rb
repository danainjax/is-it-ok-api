class UsersController < ApplicationController
    before_action :set_user


    def index
        users = User.all 
        render json: users
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: { errors: errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def show
        @user 
        render json: @user
    end

    

    private

    def user_params
        params.require(:user).permit(:name, :email, :city, :state, :id, :password)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end

end
