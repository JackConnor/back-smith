class CrewsController < ApplicationController
  def index
    @crews = Crew.all
  end

  def show
    @crew = Crew.find(params[:id])
    @skaters = @crew.skaters
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
