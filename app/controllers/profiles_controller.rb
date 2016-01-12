class ProfilesController < ApplicationController
	before_action :authenticate_user, only: [:edit, :update]

	def index
		@profile = Profile.all
    @users = User.all
    # Sets these two variables so we can display users and their profiles.
	end

	def show
		@profile = Profile.find(params[:id])
    # Finds the correct profile by the profile's id.
	end

	def new
		@profile = Profile.new
	end

  def create
  	@profile = Profile.new(profile_params)
    # passes strong params thorugh new profile.
    @user = current_user
    @profile.user_id = session[:user_id]
      
      if @profile.save
        	current_user
    		redirect_to users_path @user
    		flash[:notice] = "New profile has been entered. Welcome to The Syndicate."
    	else
    		redirect_to :back
    		flash[:notice] = "There was a problem creating your profile. Back to the Sarlac Pit."
    	end
    
  
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @user = current_user
    if @profile != nil
      if current_user.id == @profile.user_id
         @profile.update(profile_params)
         redirect_to user_path @user
         flash[:notice] = "Profile Updated!"
      else
        redirect_to user_path @user
        flash[:alert] = "Nice Try Buddy. Not your profile."
      end
    else
        redirect_to new_profile_path
    end  
  end

  private
  
  def profile_params
    params.require(:profile).permit(:name, :ship, :planet, :weapon, :side, :avatar)
  end

end
