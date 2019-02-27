class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(@user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def show
  		@user = User.find(params[:id])
  		if @user
  			if current_user.id == @user.id
  				render json: @user
  			else
  				render json: {errors: "WHOA! This ain't your page, bud!"}
  			end
  		else
  			render json: {errors: "User not found!"}
  		end
  	end

  private

  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :email)
  end
end
