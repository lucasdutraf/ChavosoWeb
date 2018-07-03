class ApplicationController < ActionController::Base

  #before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    :hairs
  end

  def after_sign_out_path_for(resource_or_scope)
    :user_session
  end

end
