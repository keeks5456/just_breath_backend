class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def create 
        user = User.find_by(username: params[:username]) 
        # byebug
        if user && user.authenticate(params[:password])   
            # encode token comes from ApplicationController
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), jwt:token}, status: :accepted 
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    def currentUser 
        if !!current_user
            token = encode_token({user_id: current_user.id})
            render json: {user:  UserSerializer.new(current_user), token: token}
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    private
    
    def user_login_params
        params.permit(:email, :password)
    end

end
