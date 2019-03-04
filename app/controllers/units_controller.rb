class UnitsController < ApplicationController
  before_action :get_unit, only: [:update, :edit, :show, :destroy]
  before_action :get_race

  def index
    @units = @races.units
  end

  def new
    @unit = @race.units.new
    render "form"
  end

  def create
    @unit = @race.units.new(unit_params)
    if @unit.save
      redirect_to race_units_path(@race)
    else
      render "form"
    end
  end

  def edit
    render "form"
  end

  def update
    if @unit.update(unit_params)
      redirect_to race_units_path
    else
      render "form"
    end
  end

  def show
  end

  def destroy
    @unit.destroy
    redirect_to race_units_path
  end

  private
    def unit_params
      params.require(:unit).permit(:name, :speed, :melee, :range, :defense, :attack, :nerve, :point, :race_id)
    end

     def get_unit
       @unit = Unit.find(params[:id])
     end

    def get_race
      @race = Race.find(params[:race_id])
    end
    
end

t.string "name"
    t.string "type"
    t.string "speed"
    t.string "melee"
    t.string "range"
    t.string "defense"
    t.string "attack"
    t.string "nerve"
    t.string "point"
    t.bigint "race_id"