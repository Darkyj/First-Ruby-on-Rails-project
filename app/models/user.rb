class User < ActiveRecord::Base
	
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email_address, presence: true
	validates :password, presence: true
end
