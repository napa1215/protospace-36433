class ApplicationController < ActionController::Base
  before_action :configure_permittid_paramaters, if: :devise_controller?

  private
  def configure_permittid_paramaters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:name, :profile, :occupation, :position])
  end
end
