class ApplicationController < ActionController::Base
  # ログインしてなければログイン画面に遷移させる
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    # deviseでユーザー登録をする時の書き方
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
