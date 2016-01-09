class User < ActiveRecord::Base

	has_many :posts, dependent: :destroy 
	has_many :comments
	has_one :profile
	
	validates_confirmation_of :password
	validates_uniqueness_of :username, :email
	validates_presence_of :username, :email, :password, :password_confirmation
end
