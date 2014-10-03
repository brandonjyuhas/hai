class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected 

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) do |user|
  		user.push(:username, :bio, :personal_website, :email, :password, :password_confirmation, :profile_photo)
  		puts params.inspect
  	end 

  	devise_parameter_sanitizer.for(:account_update) do |user|
  		user.push(:username, :bio, :personal_website, :email, :password, :password_confirmation, :profile_photo)
  	end 
  end

end
