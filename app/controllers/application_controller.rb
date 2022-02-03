class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:agency_name, :agency_president, :prefecture_id, :city, :house_number, :building_name, :permit_number, :website])
  end
end
