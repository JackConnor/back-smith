class SessionsController < ApplicationController
  def new
  end

  def create
    @skater = Skater.find_by_email(params[:email])
    if @skater && @skater.authenticate(params[:password])
      session[:user_id] = @skater.id
      redirect_to root_path, notice: "logged in!"
    else
      flash.now.alert = "invalid login credentials"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_path, notice: "logging out, come back soon!"
  end

end
