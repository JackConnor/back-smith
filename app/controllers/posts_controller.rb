class PostsController < ApplicationController

  # before_action :authenticate, only [:show, ]
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render "new"
    end
  end

  def edit
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :keywords, :cover_photo, :video_link, :city, :spot, :feat_skate, :filmer)
  end

end
