class SessionsController < ApplicationController 

    def new 
    end

    def create 
        # OAuth login
        if auth_hash = request.env["omniauth.auth"]
            auth_email = request.env["omniauth.auth"]["info"]["email"]

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
        else
            # Normal Login
            @user = User.find_by(email: params[:email])
            if @user && @user.authenticate(params[:password])
                session[:user_id] = @user.id
                redirect_to @user
            else 
                render :new
            end
        end

    end

    def destroy
        reset_session 
        redirect_to "/"
    end

end
