class BookingsController < ApplicationController
  before_action :authenticate_user!

def show
    @booking = Booking.find(params[:id])
end

def new
    @booking = Booking.new
end

def create
    @booking = Booking.new(booking_params)
    @booking.foodtruck = Foodtruck.find(params[:foodtruck_id])
    @booking.user = current_user
    authorize @booking
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @booking.status = 1
    p "here is the booking info"
    if @booking.save
      redirect_to bookings_path
    else
        puts "does not save"
        redirect_to foodtruck_path(@foodtruck)
    end
end

    def index
        if current_user.is_restaurant?
            @bookings = policy_scope([:owner, Booking])
        else
            @bookings = policy_scope(Booking)
        end
    end

    def update
      @booking = Booking.find(params[:id])
      authorize @booking
      if @booking.update(booking_params)
    # redirect_to # up to you...
        @booking.save
        redirect_to bookings_path
      else
    # render # where was the booking update form?
        redirect_to bookings_path
  end
    end

    private
        def booking_params
            params.require(:booking).permit(:status, :start_time, :end_time, :foodtruck_id, :user_id, :created_at, :updated_at, :event_name, :event_details, :expected_attendees, :event_location  )
        end
end
