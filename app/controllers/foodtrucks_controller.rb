class FoodtrucksController < ApplicationController
  def index
    @foodtrucks = policy_scope(Foodtruck)
  end
  
end