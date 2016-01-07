class SessionsController < ApplicationController
	
	def new

	end
	
	def create
	
		@user = User.where(username: params[:username]).first
		if @user and @user.password == params[:password]
			session[:user_id] = @user.id
			redirect_to @user 
			flash[:notice] = "Successfully logged in!"
		else
			flash[:alert] = "There was a problem logging in."
			redirect_to root_path
		end
	end

	def destroy
		# if current_user
			session[:user_id] = nil
			flash[:notice] = "You have been logged out."
			redirect_to login_path
		# else
		# 	redirect_to root_path
		# end
	end

end
