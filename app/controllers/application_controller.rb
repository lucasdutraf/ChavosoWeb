class ApplicationController < ActionController::Base

  #before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    user = User.new
    if user.sign_in_count = 0
      :new_hair
    else
      :hairs
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    :user_session
  end

  def after_inactive_sign_up_path_for(resource)
    :new_hair
  end

end
