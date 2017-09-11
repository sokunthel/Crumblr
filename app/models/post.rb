class Post < ActiveRecord::Base
  #This allows us to use post.heart.count in _post
  has_many :heart
end
