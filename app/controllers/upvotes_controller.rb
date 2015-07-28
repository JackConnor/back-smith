class UpvotesController < ApplicationController
  def index
  end

  def new
    @upvote = Upvote.new
    redirect_to "upvote#create"
  end

  def create
    @upvote = Upvote.create(skater_id: current_user.id)
    redirect_to root_path
  end

  def destroy
  end
end
