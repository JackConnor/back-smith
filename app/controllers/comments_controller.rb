class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comments_params)
    if @comment.save
      redirect_to post_comment_path
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def destroy
  end
  private
  def comments_params
    params.require(:comments).permit(:body, :skater_id, :post_id)
  end
end
