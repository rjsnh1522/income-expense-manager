class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  
#   before_action :configure_permitted_parameters,if: :devise_controller?

#   protected

#   def configure_permitted_parameters


#     devise_parameter_sanitizer.for(:sign_up) {|u| 
#     u.permit(:first_name,:last_name,:username,:phone,:email,:password,:remember_me)
#   }



#  devise_parameter_sanitizer.for(:sign_in) {|u| 
#     u.permit(:email,:password)
#   }

#   end
  
#  devise_parameter_sanitizer.for(:account_update) {|u| 
#     u.permit(:first_name,:last_name,:username,:phone,:email,:password,:current_password,:remember_me)
#   }



  protected

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end




end
