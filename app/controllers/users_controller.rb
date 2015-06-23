class UsersController < ApplicationController
	before_action :authenticate_user!, only: [:edit, :update, :destroy, :close, :password]

	def close
	end

	def password
		@user = current_user
	end

	def new
		@user = User.new
	end

	def edit
		@user = current_user
		@nav_subtitle = current_user.username
	end

	def show
		@user = User.find_by_email(params[:email])
	end

	def create
			@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.user_id
			redirect_to username_path(@user.username)
		else
			render :new
		end
	end

	def dashboard
	end



	private

	def user_params
		params.require(:user).permit(:username, :email, :lname, :fname, :password, :password_confirmation, :current_password, :image)
	end

end
