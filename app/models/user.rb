class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token

	# Name Validation
	validates :name, presence: true, length: { maximum: 50 }

	# Email Validation
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
				format: { with: VALID_EMAIL_REGEX },
				uniqueness: { case_sensitive: false}

	# Password Validation
	has_secure_password
	validates :password, length: { minimum: 6 }

	# Methods for Token Creation
	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	# Private Methods
	private
		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end
	
end
