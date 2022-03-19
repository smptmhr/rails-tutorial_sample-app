module SessionsHelper
  
  #渡されたユーザでログインする
  def log_in(user)
    session[:user] = user.id
  end
end
