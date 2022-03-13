class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.find_by(email: session_params[:email])
      # 送られてきたメールアドレスでユーザーを検索
    if user&.authenticate(session_params[:password])
      # 見つかった場合は、送られてきたパスワードによる認証をauthenticateメソッドを使って行う
      session[:user_id] = user.id
      # 認証に成功した場合は、セッションにuser_idを格納
      redirect_to root_path, notice: 'ログインしました'
    else
      render :new
    end
  end
  
  def destroy
    reset_session
    redirect_to root_path, notice: 'ログアウトしました'
  end
end
