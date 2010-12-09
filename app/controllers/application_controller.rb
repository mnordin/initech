class ApplicationController < ActionController::Base
  before_filter :authenticate_admin! 
  protect_from_forgery
  
  def sign_out_and_redirect(resource_or_scope)
      scope = Devise::Mapping.find_scope!(resource_or_scope)
      sign_out(scope)
      redirect_to after_sign_out_path_for(scope)
   end
end
           
