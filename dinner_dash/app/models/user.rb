class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email_address,:presence => true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	validates :full_name,presence: true, length: {minimum: 1}
	validates :display_name, length: {minimum: 2, maximum: 32}
end
