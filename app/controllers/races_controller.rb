class RacesController < ApplicationController
  before_action :get_race, only: [:new, :edit, :show, :destroy]

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
    render "form"
  end

  def create
    @race = Race.new(race_params)
    if @race.save
      redirect_to races_path
    else
    render :new
    end
  end

  def edit
    render "form"
  end

  def update
    if @race.update(race_params)
      redirect_to races_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @race.destroy
    redirect_to races_path

  private
    def race_params
      params.require(:race).permit(:name)
    end

    def get_race
      @race = Race.find(params[:id])
    end
end
