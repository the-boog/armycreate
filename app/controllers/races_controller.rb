class RacesController < ApplicationController
  before_action :get_race, only: [:update, :edit, :show, :destroy]
  before_action :get_game
  before_action :get_races

  def index
    @races = @game.races
  end

  def new
    @race = @game.races.new
    render "form"
  end

  def create
    @race = @game.races.new(race_params)
    if @race.save
      redirect_to game_races_path(@game)
    else
      render "form"
    end
  end

  def edit
    render "form"
  end

  def update
    if @race.update(race_params)
      redirect_to game_races_path
    else
      render "form"
    end
  end

  def show
  end

  def destroy
    @race.destroy
    redirect_to game_races_path
  end

  private
    def race_params
      params.require(:race).permit(:name, :game_id)
    end

     def get_race
       @race = Race.find(params[:id])
     end

    def get_game
      @game = Game.find(params[:game_id])
    end

    def get_races
      @races = @game.races
    end
    
end
