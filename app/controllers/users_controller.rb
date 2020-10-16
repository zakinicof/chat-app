class UsersController < ApplicationController

  def edit
  end

  def update
    # ユーザー情報も編集に成功したら
    if current_user.update(user_params)
      # チャット画面にリダイレクト
      redirect_to root_path
    else
      # 失敗したら編集画面を再表示
      render :edit
    end
  end

  private
  # ストロングパラメーターを使用
  def user_params
    # userモデルに存在するnameとemailカラムだけ入力を受け付ける
    params.require(:user).permit(:name, :email)
  end
end
