class User < ActiveRecord::Base
  has_secure_password
#  before_save { self.email = email.downcase }
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 30 },
  		    uniqueness: { case_sensitive: true }
#  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z\d]+\.)+[a-z]{2,})\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,
  		    format:   { with: VALID_EMAIL_REGEX },
		    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
end

