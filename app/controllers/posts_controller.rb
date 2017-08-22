class PostsController < ApplicationController

  def index
    @posts = Post.includes(:image).published
  end

  def show
  end

  def edit
  end
end
