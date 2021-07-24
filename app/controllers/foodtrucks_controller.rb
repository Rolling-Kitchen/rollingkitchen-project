class FoodtrucksController < ApplicationController

  def index
    # Policy scope - defaults to resolve.all and shows all.
    @foodtrucks = policy_scope(Foodtruck)
  end

  def show
    @foodtruck = Foodtruck.find(params[:id])
    authorize @foodtruck
  end
  
  def create
    @foodtruck = Foodtruck.new(foodtruck_params)
    if @foodtruck.save
      redirect_to foodtruck_path(@foodtruck)
    else
      render :new
    end
    authorize @foodtruck
  end

  def new
    @foodtruck = Foodtruck.new
    authorize @foodtruck
  end

  private

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :description, :food_type, :menu_package, :location, photos: [])
  end 
end