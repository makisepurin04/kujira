class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
    redirect_to calendars_index_path
  end
  def user
    super
    render "calendars/index"
    # redirect_to calendars_index_path
    # root_path
  end

  # POST /resource/sign_in
  # def create
  #   super
  #   redirect_to calendars_index_path
  #   # root_path
  # end
  # root_path
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
