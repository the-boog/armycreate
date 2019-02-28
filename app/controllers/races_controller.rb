class RacesController < ApplicationController
  before_action :get_race, only: [:update, :edit, :show, :destroy]

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
    render "form"
  end

  def create
    @race = Race.create(race_params)
    if @race.save
      redirect_to races_path
    else
    render "form"
    end
  end

  def edit
    render "form"
  end

  def update
    if @race.update(race_params)
      redirect_to races_path
    else
      render "form"
    end
  end

  def show
  end

  def destroy
    @race.destroy
    redirect_to races_path
  end

  private
    def race_params
      params.require(:race).permit(:name)
    end

    def get_race
      @race = Race.find(params[:id])
    end
end
