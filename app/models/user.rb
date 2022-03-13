class User < ApplicationRecord
  # belongs_to :question
  
  before_save { self.email = email.downcase }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
