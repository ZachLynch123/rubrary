class SessionsController < ApplicationController 

    def new 
    end

    def create 
        # OAuth login
        if auth_hash = request.env["omniauth.auth"]
            git_email = auth_hash["info"]["email"]
           # If user already exists in the db
           if @user = User.find_by(:email => git_email)
            session[:user_id] = @user.id 
            byebug
           else 
            redirect_to root_path 
        else
            # User doesn't exist in db yet 
            @user = User.new(:email => git_email, :password => SecureRandom.hex)
            byebug
            if @user.save 
                session[:user_id] = @user.id 
                redirect_to @user 
            else
                raise user.errors.full_messages.inspect 
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
        redirect_to login_path
    end

end
