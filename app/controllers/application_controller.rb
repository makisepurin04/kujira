class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def after_sign_in_path_for(resource)
      if resource.admin? 
        root_path
      else 
      calendars_path
      end
    end
  def configure_permitted_parameters
    # /users/sign_up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :phone_number, :full_name])
  end


end
