class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def add
  end

  def addDaily
    @post = Post.new(post_params)
    @post.save
    redirect_to '/daily'
  end

  def edit
  end

  def editDaily
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to '/daily'

  end

  def deleteDaily
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/daily'
  end

  private
    def post_params
      params.permit(:title, :body, :qol)
    end
end
