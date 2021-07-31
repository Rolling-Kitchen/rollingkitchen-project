class BookingPolicy < ApplicationPolicy
  attr_reader :user, :booking

  def initialize(user, booking)
    @user = user
    @booking = booking
  end
  class Scope < Scope
    def resolve
      user.bookings
    end
  end
  def index?
    return true
  end
  def create?
    @user.is_restaurant? ? false : true
  end
  def update?
    @booking.foodtruck_id === @user.id
  end
end
