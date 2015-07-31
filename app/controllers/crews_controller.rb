class CrewsController < ApplicationController
  def index
    @crews = Crew.all
  end

  def show
    @crew = Crew.find(params[:id])
    @skaters = @crew.skaters.all
  end

  def new
    @crew = Crew.new
    @skater = Skater.find(current_user.id)
  end

  def create
    @crew = Crew.create(crew_params)
    if @crew.save
      redirect_to crew_path(@crew.id)
    end
  end

  def edit
  end

  def destroy
  end

  private
  def crew_params
    params.require(:crew).permit(:cover_photo, :name, :city)
  end
end
