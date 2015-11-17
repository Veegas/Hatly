class User < ActiveRecord::Base
  has_secure_password

  has_many :comments
  has_many :friendships, :foreign_key => "user", 
  :class_name => "Friendship"
  has_many :friends, :through => :friendships
  
  has_many :posts
  has_many :wall_posts

  validates :email, email_format: { message: "Isn't in Email format" }

end
