class User < ApplicationRecord
  has_secure_password

    validates :first_name, :last_name, :username, :email, presence: true
    validates :first_name, length: { minimum: 1 }
    validates :last_name, length: { minimum: 1 }
  
    validates :username, uniqueness: true
end
