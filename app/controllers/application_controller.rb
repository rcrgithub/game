class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected
  #
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password) }
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password) }
  # end

  # def after_sign_in_path_for(_resource)
  #   new_profile_path
  # end
end
