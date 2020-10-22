class SessionsController < ApplicationController 

    def new 
    end

    def create 
        # auth
        byebug

        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to @user
        else 
            byebug
            render login_path
        end

    end

    def destroy
        session.delete :user_id
    end

end
