class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :first_name, :second_name) }
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :first_name, :second_name)}
  end

end
