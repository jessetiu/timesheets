class User < ApplicationRecord
  before_save { email.downcase! }
  before_save { username.downcase! }
  validates :name, presence: true, length: { maximum: 50 }, 
            uniqueness: {case_sensitive: false}
  validates :email, presence: true, length: { maximum: 100 }, 
            uniqueness: {case_sensitive: false}
  has_secure_password
end
