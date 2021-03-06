class User < ApplicationRecord

  rolify
  has_secure_password

  validates_presence_of :email, :password_digest

  validates_uniqueness_of :email, case_sensitive: false
end
