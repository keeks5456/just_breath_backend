class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create 
        user = User.find_by(username: params[:username]) #User#authenticate comes from BCrypt
        # byebug
        if user && user.authenticate(params[:password])   
            # encode token comes from ApplicationController
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted 
        else
            render json: {message: 'Invalid username or password'}, status: :unauthorized
        end
    end

    def persist
        token = encode_token({user_id: @user.id})
        render json: {user:UserSerializer.new(@user), token:token} 
    end

    # params == "auth"=>{"username"=>"Rick Sanchez", "password"=>"bacon"}}
    private
    
    def user_login_params
        params.permit(:email, :password)
    end

end
