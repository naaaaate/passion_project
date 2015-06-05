class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :email
      t.string      :phone_number
      t.string      :street_address
      t.string      :city
      t.string      :state
      t.integer     :zip
      t.string      :username
      t.string      :password_hash

      t.timestamps

    end
  end
end

# get '/' do
#   if logged_in?
#     redirect '/restaurants'
#   else
#     erb :'users/login'
# end

# get '/login' do
#   @user = User.where(email: params[:email], password: params[:password]).first
#   login(@user)
#   redirect '/restaurants'
# end

# get '/signup' do
# end

# delete '/logout' do
#   logout!
#   redirect '/login'
# end