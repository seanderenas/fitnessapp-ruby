class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!

    before_action :init_nav

    def init_nav
    
        if authenticate_user! || user_signed_in?
            @userName = current_user.first + " " + current_user.last
        end 

    end




    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first, :last, :private])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first, :last, :private])
        
    end

end
