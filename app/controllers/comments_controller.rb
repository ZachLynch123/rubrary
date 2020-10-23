class CommentsController < ApplicationController


    def index 
        @comments = Comment.where(book_id: params[:book_id])
    end

    def new 
        comment = Comment.new
    end

    def create 
        comment = current_user.comments.create(comment_params)
        redirect_to current_user
    end

    private 

    def comment_params 

        x = params.permit(:comment_text, :book_id)
    end


end
