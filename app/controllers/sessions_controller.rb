class SessionsController < ApplicationController

    def create
        user = User.find_by_name(params[:name])
        if user && user.authenticate(params[:password])
            render_user_with_token(user)
        else
            render json: {errors: "It aint gon work sonny, your password/username is rotten"}, status: :forbidden
        end

        def autologin
            render_user_with_token(logged_in_user)
        end
end
