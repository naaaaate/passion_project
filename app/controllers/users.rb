get '/users/:id' do
  @user = User.find(params[:id])
    @posts = @user.blog.posts#Post.all
  # @posts = Post.all.reverse
  erb :"users/edit_welcome_page"
end

# get '/users/:id/posts' do
#   @user = User.find(params[:id])
#   @posts = @user.blog.posts#Post.all
#   erb :"users/edit_welcome_page"
# end

get '/signup' do
  erb :"users/signup"
end

post '/signup' do
  user = User.new(
    name: params[:name],
    username: params[:username],
    email: params[:email],
  password: params[:password]
  )

  if user.save
    blog = Blog.create(title: params[:title], user_id: user.id)
    login(user)
    redirect "/users/#{user.id}"
  else
    @login_failed = true
    erb :signup
  end
end