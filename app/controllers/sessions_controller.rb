class SessionsController < ApplicationController 

    def new 
        render :signup
    end

    def create 
        session[:email] = params[:email]
        session[:user_id] = params[:user_id]
        redirect_to '/user/:id'
    end

    def destroy
        session.delete :email 
        session.delete :user_id
    end

end
