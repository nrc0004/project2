class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    homepage_path
  end

  def after_sign_up_path_for(resource)
    new_user_profile_path(resource)
  end

end
