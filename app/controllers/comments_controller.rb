class CommentsController < ApplicationController


    def index 
        @comments = Comment.where(book_id: params[:book_id])
    end

    def new 
        @comments = current_user.comments.build
    end

    def create 
        @comment = current_user.comments.build(comment_params)
        
        if @comment.save
            byebug
            redirect_to new_book_comment_path(params[:book_id])
        else 
            redirect_to current_user
        end
    end

    private 

    def comment_params 

        x = params.permit(:comment_text, :book_id)
    end


end
