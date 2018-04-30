class ApplicationController < ActionController::Base
  
  
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?


	protected

	def configure_permitted_parameters

	#	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :name, :lastname, :email, :password, :password_confirmation, :asksecurityone, :answersecurityone, :asksecuritytwo, :answersecuritytwo) }
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :asksecurityone, :answersecurityone, :asksecuritytwo, :answersecuritytwo] )

	#	devise_parameter_sanitizer.permit(:sign_up) do |user|
  	#		user.permit(:name, :lastname, :email, :password, :password_confirmation, :asksecurityone, :answersecurityone, :asksecuritytwo, :answersecuritytwo)
	#	end

	end
end
