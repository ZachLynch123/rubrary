class UsersController < ApplicationController
    
    def new 
        @user = User.new 
    end

    def create 
        @user = User.create(user_params)

        if @user.save 
            session[:user_id] = @user.id
            redirect_to @user 
        else 
            render :new 
        end
    end

    def show 
        @user = find_user
    end





    private 

    def find_user
        User.find(params[:id])
    end

    def user_params 
        params.permit(:email, :password)
    end



end
