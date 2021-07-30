class FoodtrucksController < ApplicationController
  before_action :set_foodtruck, only: [:show, :edit, :update, :destroy]

  def index
    # Policy scope - defaults to resolve.all and shows all.
    @foodtrucks = policy_scope(Foodtruck)
    if params[:query].present?
      @foodtrucks = Foodtruck.search_by_location_and_name(params[:query])
    else
      @foodtrucks = Foodtruck.all
    end
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
    authorize @foodtruck
  end

  def update
    @foodtruck.update(foodtruck_params)
    redirect_to foodtruck_path(@foodtruck)
    authorize @foodtruck
  end

  def destroy
    authorize @foodtruck
    @foodtruck.destroy
    redirect_to root_path
  end

  private

  def search_food
    mexican = params[:food_type].present? ? params[:food_truck] : '%'
    @foodtruck = Foodtruck.search(food_type)
  end

  def set_foodtruck
    @foodtruck = Foodtruck.find(params[:id])
  end

  def foodtruck_params
    params.require(:foodtruck).permit(:name, :description, :food_type, :food_price, :menu_package, :location, :photo)
  end 
end
