class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user


	validates_presence_of :title, :body
	mount_uploader :image, ImageUploader
	
end
