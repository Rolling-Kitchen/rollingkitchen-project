class FoodtrucksController < ApplicationController
  before_action :set_foodtruck, only: [:show, :edit, :update, :destroy]

  def index
    # Policy scope - defaults to resolve.all and shows all.
    @foodtrucks = policy_scope(Foodtruck)
  end

  def show
    @booking = Booking.new()    
    authorize @foodtruck
  end
  
  def create
    @foodtruck = Foodtruck.new(foodtruck_params)
    @foodtruck.user = current_user
    if @foodtruck.save!
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

  def edit
    raise AuthorizationError unless @foodtruck.user == current_user && current_user.is_restaurant?
    authorize @foodtruck
  end

  def update
    raise AuthorizationError unless @foodtruck.user == current_user && current_user.is_restaurant?
    @foodtruck.update(foodtruck_params)
    redirect_to foodtruck_path(@foodtruck)
    authorize @foodtruck
  end

  def destroy
    raise AuthorizationError unless @foodtruck.user == current_user && current_user.is_restaurant?
    authorize @foodtruck
    @foodtruck.destroy
    redirect_to root_path
  end

  private

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:id])
  end

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :description, :food_type, :food_price, :menu_package, :location, :photo)
  end 
end
