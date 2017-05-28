class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_params, if: :devise_controller?



  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

def configure_permitted_params

devise_parameter_sanitizer.for(:sign_up) do |u| 
  u.permit(:full_name,:phone,:password,:password_confirmation,:email)


end
            devise_parameter_sanitizer.for(:sign_in) do |u| 
              u.permit(:remember_me,:password,:email)


            end
      devise_parameter_sanitizer.for(:account_update) do |u| 
        u.permit(:full_name,:phone,:password,:password_confirmation,:email)


      end






end
end