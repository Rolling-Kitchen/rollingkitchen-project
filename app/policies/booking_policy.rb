class BookingPolicy < ApplicationPolicy
  attr_reader :user, :booking

  def initialize(user, foodtruck)
    @user = user
    @booking = booking
  end
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    return true
  end
  def create?
    @user.is_restaurant? ? false : true
  end
end
