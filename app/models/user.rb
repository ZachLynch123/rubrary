class User < ApplicationRecord
    has_many :comments
    has_many :books, through: :comments

    has_secure_password

    validates :email, presence: true    
end
