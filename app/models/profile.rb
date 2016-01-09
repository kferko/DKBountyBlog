class Profile < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :name, :planet, :weapon, :side
end
