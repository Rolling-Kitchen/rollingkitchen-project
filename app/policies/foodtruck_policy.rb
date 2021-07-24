class FoodtruckPolicy < ApplicationPolicy
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
      return false
    end
    def new?
      return true
    end
end
