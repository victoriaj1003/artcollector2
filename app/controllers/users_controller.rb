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
		@user = User.find_by_username(params[:username])
	end

	def create
			@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.user_id
			redirect_to username_path(@user.username), notice: "new account created"
		else
			render :new
		end
	end

	def dashboard
	end

	def update
		@user = current_user
		old_password = params[:user][:current_password]
		if old_password
			if old_password == current_user.password
				if @user.update(user_params.excetp(:current_password))
						redirect_to username_path(@user.username),
							notice: "password updated"
		else
				render :password
		end

		else
				flash[:alert] = "sorry, wrong password"
				render :password
		end

		elsif @user.update(user_params)
					redirect_to username_path(@user.username),
						notice: "profile updated"
		else
					render :edit
		end
	end

	def destroy
		@user = current_user
		if @user.password == params[:user][:password]
			@user.destroy
			session[:user_id] = nil
			redirect_to root_path, notice: "your account has been deleted"
		else
			flash[:alert] = "wrong password. do you still want to delete your account?"
			render :close
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :lname, :fname, :password, :password_confirmation, :current_password, :image)
	end

end
