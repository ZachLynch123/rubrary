class User < ApplicationRecord
    has_many :comments
    has_many :books, through: :comments

    has_secure_password

    def self.find_or_create_by_omniauth(auth_hash)

        auth_email = auth_hash["omniauth.auth"]["info"]["email"]

        if user = User.find_by(:email => auth_email)
            session[:user_id] = user.id 
            redirect_to user 
        else 
            user = User.new(:email => auth_email, :password => SecureRandom.hex)
            if user.save 
                session[:user_id] = user.id 
                redirect_to user 
            else 
                raise user.errors.full_message.inspect 
            end
        end
    end

end
