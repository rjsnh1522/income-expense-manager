class RegistrationsController < ApplicationController
prepend_before_filter :require_no_authentication, only: [:cancel ]

#  protected
#   def after_sign_up_path_for(resource)
#     expenses # Or :prefix_to_your_route
#   end

#   def after_inactive_sign_up_path_for(resource)
#       expenses # Or :prefix_to_your_route
#   end


  # private

  # def sign_up_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation,:phone)
  # end

  # def account_update_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  # end







end
