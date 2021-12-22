class UsersController < ApplicationController
    before_action :set_user


    def index
        users = User.all 
        render json: users
    end

    def show
        @user 
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :city, :state, :id)
    end

    def set_user
        @user = User.find_by_id(params[:id])
    end

end
