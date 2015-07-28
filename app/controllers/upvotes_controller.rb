class UpvotesController < ApplicationController
  def index
  end

  def new
    @upvote = Upvote.new
  end

  def create
    @post = Post.find(params[:post])
    @post.increment(:upvoters, by=1).save
    @upvote = Upvote.create(skater_id: current_user.id, post_id: params[:post])
    redirect_to root_path
  end

  def destroy
  end
end
