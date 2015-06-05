helpers do
  def current_user
    if session[:user_id]
      User.find(session[:user_id])
    end
  end

  def login(user)
    session[:user_id] = user.id
  end

  def logout!
    session[:user_id] = nil
  end


end