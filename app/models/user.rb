class User < ApplicationRecord
    has_secure_password
    
    has_many :books 
    has_many :favorites, through: :books

    def authenticate(password) 
        if BCrypt::Password.create(self.password_digest) == password
            self
        else
            false
        end
    end
end
