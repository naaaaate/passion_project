get '/login' do
  erb :"users/login"
end

post '/login' do
  @user = User.find_by_username(params[:username])

    if @user && @user.password == params[:password]
      login(@user)
      # "Successful"
      # redirect "/"
      redirect "/users/#{@user.id}"
    else
      @login_failed = true
      erb :"users/login"
    end
end

get '/logout' do
  logout!
  redirect '/'

end