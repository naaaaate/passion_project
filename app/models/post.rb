class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :blog
  belongs_to :user
end
