class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show

    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = User.find(params[:user_id])
    @profie = @user.profile.create!(profile_params)

    redirect_to program_path(@user)
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.user == current_user
      @profile.update(profile_params)
    else
      flash[:alert] = "You may only edit your personal profile"
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :location, :interests)
  end

end
