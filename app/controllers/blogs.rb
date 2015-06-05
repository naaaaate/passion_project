#show all
get '/blogs' do
  @users = User.all
  @blogs = Blog.all

  erb :blogs
end

# #new
# get '/blogs/new' do
#   erb :
# end

# #create
# post '/blogs' do

# end

# #show one
# get '/' do

# end

# #edit
# get '/' do

# end

# #update
# update '/' do

# end

# #delete
# delete '/' do

# end