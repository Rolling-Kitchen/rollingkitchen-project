class FoodtrucksController < ApplicationController

  def index
    # Policy scope - defaults to resolve.all and shows all.
    @foodtrucks = policy_scope(Foodtruck)
  end
  def show
    @foodtruck = Foodtruck.find(params[:id])
    authorize @foodtruck
  end
end