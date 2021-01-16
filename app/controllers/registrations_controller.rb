class RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to root_path
      flash[:notice] = '登録に成功しました'
    else
      flash[:alert] = '必須項目を確認してください'
      render :new
    end
  end

  protected

  # ユーザー体験を向上させるためパスワードの入力を省略
  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
