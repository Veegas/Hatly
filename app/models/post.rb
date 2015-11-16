class Post < ActiveRecord::Base
	has_many :comments
	has_many :items
	belongs_to :user
	has_one :wall_post
end
