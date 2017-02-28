class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [ :intro]

  def after_sign_in_path_for(resource)
    loggedin_path
  end

end
