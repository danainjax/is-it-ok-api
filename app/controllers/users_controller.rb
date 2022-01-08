class UsersController < ApplicationController
    


    def index
        users = User.all 
        render json: users
    end

    def create
        user = User.create!(user_params)
        if user.save
            render_user_with_token(user)
        else
            render json: {errors: user.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
           
    end

    def show

        user = User.find(params[:id])
        render json: user
        
        # user = User.new(user_params)
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

    

end
