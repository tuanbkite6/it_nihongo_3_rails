class ApplicationController < ActionController::Base
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit :sign_up, keys: [:name, :age, :avatar]
        devise_parameter_sanitizer.permit :account_update, keys: [:name, :age, :avatar]
    end
end
