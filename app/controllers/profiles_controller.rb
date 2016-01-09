class ProfilesController < ApplicationController
	before_action :authenticate_user, only: [:edit, :update]

	def index
		@profile = Profile.all
	end

	def show
		@profile = Profile.find(params[:id])
	end

	def new
		@profile = Profile.new
	end

  def create
  	@profile = Profile.new(user_params)
  	if @profile.save
      	current_user
  		redirect_to login_path 
  		flash[:notice] = "New profile has been entered. Welcome to The Syndicate."
  	else
  		redirect_to root_path 
  		flash[:notice] = "There was a problem creating your profile. Back to the Sarlac Pit."
  	end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if current_user.id == @profile.user_id
       @profile.update(profile_params)
       redirect_to profile_path
       flash[:notice] = "Profile Updated!"
    else
      redirect_to profile_path
      flash[:alert] = "Nice Try Buddy. Not your profile."
    end
  end

  private
  
  def user_params
    params.require(:profile).permit(:name, :side)
  end

end
