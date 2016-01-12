class UsersController < ApplicationController
  # we may not need this. It might not be doing anything. Testing later.
  before_action :authenticate_user, only: [:edit, :update, :destroy]  

  def index
  	# current_user
    @users = User.all

  end

  def show
    current_user
  	@user = User.find(params[:id])
    @current_user_id = session[:user_id]
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    # Passing through strong params defined at the bottom.
  	if @user.save
      current_user
  		redirect_to new_profile_path 
      # redirect to new profile when user makes account.
  		flash[:notice] = "New account created. Happy Hunting."
  	else
  		redirect_to root_path 
  		flash[:notice] = "There was a problem creating your account. Back to SlaveI."
      # Redirects to root path if not.
  	end
  end

  def destroy
  	# Setting @user variable to the user.find for this id.
  	@user = User.find(params[:id])
  	# puts "DESTROYING USER *************"
    # note to self testing in console.
    if current_user
        if current_user.id == @user.id
           @user.destroy
           redirect_to login_path
           flash[:alert] = "Your Account Has Been Deleted."
           session[:user_id] = nil
           # making sure to sign user out after destroying
        else
          redirect_to :back
          flash[:alert] = "Nice Try Buddy. Not your account to delete"
        end
    else
      redirect_to :back
      flash[:alert] = "Please log in to delete your account." 
    end 
  end

  def edit
	  
  end
  
  def update
  	
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar)
  end

end 
