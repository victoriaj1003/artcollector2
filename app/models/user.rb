class User < ActiveRecord::Base

	has_many :articles
	

	def self.find_by_email(email)
		User.where("lower(email) = ?", email.downcase).first
	end

	def self.find_by_username(username)
		User.where("lower(username) = ?", username.downcase).first
	end
end


