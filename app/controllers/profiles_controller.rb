class ProfilesController < ApplicationController

  def index
    @user = current_user
    @profiles = Profile.all
  end

  def show
    @user = current_user
    @profile = Profile.find(params[:id])
  end

  def new
    @user = current_user
    @profile = Profile.new

  end

  def edit
    @user=current_user
    @profile = Profile.find(params[:id])
    @user= User.find(params[:user_id])

  end

  def create
    @user = current_user
    @profile = @user.create_profile(profile_params)

      redirect_to user_profile_path(@user, @profile)
  end

  def update
    @user = current_user
    @profile = Profile.find(params[:id])
    if @profile.user == current_user
      @profile.update(profile_params)
    else
      flash[:alert] = "You may only edit your personal profile"
    end

    redirect_to user_profile_path(@user, @profile)
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :age, :gender, :location, :interests)
  end

end
