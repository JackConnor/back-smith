class SkatersController < ApplicationController

  def test
    @posts = Post.all
  end

  def index
    @skaters = Skater.all
  end

  def show
    @skater = Skater.find(params[:id])
  end

  def new
    @skater = Skater.new
  end

  def create
    @skater = Skater.new(skater_params)
    if @skater.save
      session[:user_id] = @skater.id
      redirect_to "/skaters/#{@skater.id}"
    else
      render "new"
    end
  end

  def edit
    @skater = Skater.find(params[:id])
    if session[:user_id] && current_user.id == params[:id].to_i
      flash[:notice]="edit your page"
      render "edit"
    else
      flash[:notice]="that's not your page"
      render "show"
    end
  end

  def update
    @skater = Skater.find(params[:id])
    if @skater.update_attributes(skater_params)
      flash[:notice] = "successfully updated"
      redirect_to root_path
    else
      flash[:notice]= "couldn't update user"
      render "edit"
    end
  end

  def delete
  end
  private
  def skater_params
    params.require(:skater).permit(:name, :email, :city, :photo, :intro_video)
  end
end
