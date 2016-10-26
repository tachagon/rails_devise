class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def index

  end

  protected

  	def configure_permitted_parameters
		  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
		    user_params.permit(
		    	:member_code,
		    	:email,
		    	:password,
		    	:password_confirmation,
		    	:remember_me
		    )
		  end

		  devise_parameter_sanitizer.permit(:account_update) do |user_params|
		    user_params.permit(
		    	:email,
		    	:password,
		    	:password_confirmation,
		    	:current_password
		    )
		  end

  	end

end
