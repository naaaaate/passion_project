get '/' do
  #login button
  #signup button
  #redirect you to home page
  @users = User.all
  @blogs = Blog.all
  # session[:ip] = request.ip
  # p session[:ip]
  # fake_ip = "17.173.254.223"
  # # response = HTTParty.get("http://ipinfo.io/#{session[:ip]}/city")
  # req = HTTParty.get("http://ipinfo.io/#{fake_ip}/city")
  # p "$"*20
  # p req
  # p dumped_city = JSON.dump(req)
  # # p parsed_city = JSON.parse(dumped_city)
  # p "$"*20
  # @posts = Post.all.reverse
  erb :"blogs/index"
end

# get '/:location' do
#   @location = params[:location]
#   p @location
#   #login button
#   #signup button
#   #redirect you to home page
#   @users = User.all
#   @blogs = Blog.all
#   # @posts = Post.all.reverse
#   erb :"blogs/index"



# end

