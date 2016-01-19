class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    flash.keep
    # case resource.role
    # when "family_user"
    #   user_home_path
    # when "staff_user"
    #   admins_main_menu_path
    # when "admin"
    #   admins_main_menu_path
    # else
    #   root_path
    # end
    user_path(current_user)
  end


end
