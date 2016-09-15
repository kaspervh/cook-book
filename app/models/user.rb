class User < ApplicationRecord
  has_secure_password
  after_create :default_role

  validates :username, 
            presence: true,
            uniqueness: true,
            length: { maximum: 30 }

  validates :email,
            presence: true,
            uniqueness: true,
            length: { maximum: 30 }

  validates :password,
            length: {minimum: 5}


  def default_role
    self.role = "student"
    save!
  end
end
