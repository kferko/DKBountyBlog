class UsersController < ApplicationController
  
  before_action :authenticate_user, only: [:edit, :update, :destroy]  

  def index
  	# current_user
    @users = User.all

  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      current_user
  		redirect_to login_path 
  		flash[:notice] = "New account created. Happy Hunting."
  	else
  		redirect_to root_path 
  		flash[:notice] = "There was a problem creating your account. Back to SlaveI."
  	end
  end

  def destroy
  	# Setting @user variable to the user.find for this id.
  	@user = User.find(params[:id])
  	puts "DESTROYING USER *************"
    if current_user.id == @user.id
       @user.destroy
       redirect_to login_path
       flash[:alert] = "Your Account Has Been Deleted."
       session[:user_id] = nil
    else
      redirect_to :back
      flash[:alert] = "Nice Try Buddy. Not your account to delete"
    end
  end

  def edit
	  
  end
  
  def update
  	
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end 

# def create
#   	puts "these are the params *****************"
#   	puts params[:user]
#   	# I did this to find the params output in terminal
#   	@user = User.new(params[:user])
#     # @user.save
#   	# create variable set to this and takes in the mass params of the user object.
#     if @user.save
#   	@user.save
#       # save this variable. normally would set this in an if statement to make sure that it was allowed.
#       flash[:notice] = "Your account has been created!"
# 	   redirect_to user_path @user
#     else
#       flash[:notice] = "Sorry, We could not create your account...Please try agains."
#       redirect_to login_path
# 	    # redirect to the users site.
#     end

#   end