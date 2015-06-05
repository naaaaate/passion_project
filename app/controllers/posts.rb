#index
get '/posts' do
  @blog = Blog.find(1)
  @posts = Post.all.reverse
  #gets a list of posts..
  erb :"posts/index"
end
#create new post
get '/posts/new' do
  #this will be a link to a form w html that posts to post route
  erb :"posts/new"
end

#create post logic
post '/posts' do
  #create logic to create a new post and save
  # redirect "/users/#{@user[:id]}"
  blog = Blog.find_by(user_id: session[:user_id])

  @post = Post.new(
    title:   params[:title],
    content: params[:content],
    blog_id: blog.id#User.find_by(id: blog.id)


    )

  if @post.save
  # redirect "/posts/#{current_user.id}"
    redirect "/posts/#{@post.id}"
    # redirect '/users/#{session[:user_id]}'
  end
end

#show specific post
get '/posts/:id' do
  #just show the post
  @post = Post.find(params[:id])
  erb :"posts/show"  #needs link to go home
end

#form to edit new post
get '/posts/:id/edit' do
  #send to form to edit post form calls patch post
  @post = Post.find_by_id(params[:id])

  erb :"posts/edit"
end

#update
put '/posts/:id' do

  @post =Post.find(params[:id])
  @post.update(title: params[:title],
                content: params[:content]
                )

 #edit form in db.. and save then redirect to
 #specific post to see it.
 # redirect "/posts/#{@post.id}"
 redirect "/users/#{session[:user_id]}"
end

#destroy
delete '/posts/:id' do
  #posts.destroy
  Post.find(params[:id]).destroy
  # redirect '/posts'
  redirect "/users/#{session[:user_id]}"
end






# get '/posts' do

#   erb :"posts/index"
# end

# get '/posts/new' do

#   erb :"posts/new"
# end

# post '/posts' do

#   @post = Post.new(
#     title: params[:title],
#     content: params[:content],
#     blog_id: User.find_by(id: sessions[:user_id]).blog.id)
#   # Post.create(params stuff)

#   redirect "/posts/#{@post[:id]}"
# end

# get '/posts/:id' do

#   erb :"posts/show"
# end

# get '/posts/:id/edit' do

#   erb :"posts/edit"
# end

# patch '/posts/:id' do

#   # Post.update(params stuff)

#   redirect '/posts/:id'
# end

# delete '/posts/:id' do

#   # Post.destory(params stuff)

#   redirect '/posts/index'
# end
