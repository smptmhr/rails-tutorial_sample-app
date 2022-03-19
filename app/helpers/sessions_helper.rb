module SessionsHelper
  
  #渡されたユーザでログインする
  def log_in(user)
    session[:user] = user.id
  end
  
  #現在ログイン中のユーザを返す(いる場合)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  
  #ユーザーがログインしていればtrue,その他はfalse
  def logged_in?
    !current_user.nil?
  end
  
end
