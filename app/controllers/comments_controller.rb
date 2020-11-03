class CommentsController < ApplicationController
    before_action :logged_in?


    def index 
        @comments = Comment.where(book_id: params[:book_id])
    end

    def new 
        @comments = current_user.comments.build
    end

    def create 
        @comment = current_user.comments.build(comment_params)
        
        if @comment.save
            redirect_to current_user
        else 
            redirect_to new_book_comment_path(params[:book_id])
        end
    end

    private 

    def comment_params 

        x = params.permit(:comment_text, :book_id)
    end

    def logged_in?
        return head(:forbidden) unless session.include? :user_id
    end


end
