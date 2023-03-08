class CommentController < ApplicationController

    def create
        @comment = Comment.create!(name: params[:name], comment: params[:comment], post_id: params[:post_id])
        render :json => @comment
    end

    def index
        @comments = Comment.all 
        render :json => @comments
    end

    def destroy
        @post=Post.find(params[:post_id])
        @comment=@post.comment.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

end
