class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
    def configured_permitted_parameters
      devise_parameter_sanitize.for(:sign_up) { |u| u.permit(:username, :emmail, :password, :password_confirmation, :remember_me)}
      devise_parameter_sanitize.for(:sign_in) { |u| u.permit(:login, :username, :remember_me)}
      devise_parameter_sanitize.for(:account_update) { |u| u.permit(:username, :emmail, :password, :password_confirmation, :current_password)}
    end

end
