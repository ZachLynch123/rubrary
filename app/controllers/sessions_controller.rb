class SessionsController < ApplicationController 

    def new 
    end

    def create 
        # auth
        @user = User.find_by(email: params[:email])
        #if @user && @user.authenticate(params[:password])
        #    redirect_to @user
        #else 
        #    render: login_path
        #end
            
        @session[:user_id] = params[:user_id]
        redirect_to '/user/:id'
    end

    def destroy
        session.delete :email 
        session.delete :user_id
    end

end
