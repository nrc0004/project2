class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profle.find(params[:id])
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :location, :interests)
  end

end
