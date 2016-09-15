class User < ApplicationRecord
	has_secure_password
	after_create :default_role

	def default_role
		self.role = "student"
		save!
	end
end
