class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    #code
  end

  def create
    #model
    Post.create(title: params[:post][:title], description: params[:post][:description])
    #view/response
    redirect_to posts_path
  end
end
