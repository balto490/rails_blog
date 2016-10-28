class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  	def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username, :email, :password, :password_confirmation, :remember_me])
    	#devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :current_password, :firstname, :middlename, :lastname, :nickname])
	end
end