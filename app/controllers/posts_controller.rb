class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def addDaily
    @post = Post.new(post_params)
    @post.save
    redirect_to '/daily'
  end

  private
    def post_params
      params.permit(:title, :body, :qol)
    end
end
