class CommentsController < ApplicationController


    def index 
        @comments = Comment.where(book_id: params[:book_id])
    end

    def new 
        comment = Comment.new
    end

    def create 

    end



end
