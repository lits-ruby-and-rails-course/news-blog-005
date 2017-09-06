class PostsController < ApplicationController

  def index
    @posts = Post.includes(:image).published
  end

  def show
    @comment = params[:edit_comment_id] ? @post.comments.find(params[:edit_comment_id].to_i) : @post.comments.new
  end

  def edit
  end
end
