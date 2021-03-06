class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def admin_types
    ['AdminUser']
  end
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit( :sign_up, keys: [:first_name, :last_name] )
    devise_parameter_sanitizer.permit( :account_update, keys: [:first_name, :last_name] )
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end
end
