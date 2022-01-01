class SessionsController < ApplicationController

    def create
        user = User.find_by_name(params[:name])
        if user && user.authenticate(params[:password])
            render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
        else
            render json: {errors: "Username or password is invalid"}, status: :forbidden
        end
    end

        def autologin
            # byebug
            render json: {user: UserSerializer.new(logged_in_user), token: encode_token(logged_in_user.id)}
        end
end
