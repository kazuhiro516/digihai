class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #CSRF対策のため追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,        keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end

    # ログアウト後のリダイレクト先を指定する処理
    def after_sign_out_path_for(resource)
      static_pages_home_path
    end 
end
