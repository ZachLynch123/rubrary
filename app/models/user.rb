class User < ApplicationRecord
    has_many :books 
    has_many :comments, through: :books

    has_secure_password

    
end
