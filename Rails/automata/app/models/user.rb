class User < ApplicationRecord
	validates :name, presence: true
    validates :lastname1, presence: true
    validates :lastname2, presence: true
    validates :tipo, presence: true
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,uniqueness: {case_sensitive:false}, format: { with: VALID_EMAIL_REGEX}
    
    has_secure_password
end
