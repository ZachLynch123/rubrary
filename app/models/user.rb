class User < ApplicationRecord
    has_many :comments
    has_many :books, through: :comments

    has_secure_password

    validates :email, presence: true
    # Validates that email is unique and has an '@' sign in it
    validates :email,format: { with: /(.+)@(.+)/, message: "Email invalid"  }
    
end
