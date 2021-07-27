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
      return true
    end
    def new?
      return true
    end
    def edit?
      return true
    end
    def update?
      return true
    end
    def destroy?
      return true
    end
end

private

def is_owner?
end