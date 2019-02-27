class ApplicationController < ActionController::API
	 # before_action :authorized
	# Copy and paste me - I'm always the same! Just remember to change the super_secret_key!

	# If you want to authorize a route (i.e. make the curr_user method work), simply add an "Authorization" header to your request!!!!
	def encode_token(user_id)
		JWT.encode({user_id: user_id}, "super_secret_key")
	end

	def auth_header
		request.headers["Authorization"]
	end

	def decoded_token
      begin
        JWT.decode(auth_header, 'super_secret_key', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
			end
  end

	def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

	def authorized
    render json: { message: 'Please log in' }
  end
end
