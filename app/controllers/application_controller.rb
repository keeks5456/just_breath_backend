class ApplicationController < ActionController::API

    before_action :authorized

    def encode_token(payload) 
        JWT.encode(payload, 'bacon') #change later
    end

    def auth_header 
        # { 'Authorization': 'Bearer <token>' }
        request.headers['Authorization']
    end

    def decoded_token()
        if auth_header
            token = auth_header.split(' ')[1]
            # headers: { 'Authorization': 'Bearer <token>' }
            begin
            JWT.decode(token, 'bacon', true, algorithm: 'HS256')
            # JWT.decode(self.token, ENV['SECRET'], true, { alg: ENV['ALG'] }) //try this tomorrow friday
            # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
            rescue JWT::DecodeError
                [{error: 'Invalid token'}]
            end
        end
    end

    def current_user
        if decoded_token
        # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
        # or nil if we can't decode the token
        user_id = decoded_token[0]['user_id']
        user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end
    #  Therefore logged_in? will just return a boolean depending on what our current_user method returns.

    def authorized
        render json: {message: 'Pease Log in'}, status: :unauthorized unless logged_in?
    end
end