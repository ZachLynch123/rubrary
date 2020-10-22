class SessionsController < ApplicationController 

    def new 
    end

    def create 
        # auth
        

        @user = User.find_by(email: params[:email])
        auth = @user.authenticate(params[:password])
        byebug
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else 
            render :new
        end

    end

    def destroy
        reset_session 
        redirect_to login_path
    end

end
