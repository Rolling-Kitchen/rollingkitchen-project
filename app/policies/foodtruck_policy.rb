class FoodtruckPolicy < ApplicationPolicy
  attr_reader :user, :foodtruck

  def initialize(user, foodtruck)
    @user = user
    @foodtruck = foodtruck
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
    def show?
      return true
    end
    def create?
      #current_user.is_restaurant?
      return true
    end
    def new?
      if @user
        @user.is_restaurant?
      end
    end
    def edit?
      @user.is_restaurant?
    end
    def update?
      @user.is_restaurant?
    end
    def destroy?
      @user.is_restaurant?
    end
end