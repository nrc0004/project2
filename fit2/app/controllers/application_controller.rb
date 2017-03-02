class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_action :authenticate_user!, :except => [ :homepage, :splash]

  def after_sign_in_path_for(resource)
    homepage_path
  end

  def after_sign_up_path_for(resource)
    new_user_profile_path
  end
end
