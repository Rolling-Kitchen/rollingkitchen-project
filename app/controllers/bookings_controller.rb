class BookingsController < ApplicationController
  before_action :authenticate_user!

    def create
        foodtruck = Foodtruck.find(params[:foodtruck_id])

        if current_user == foodtruck.user
            flash[:alert] = "You cannot book your own foodtruck!"
        else
            start_date = Date.parse(bookings_params[:start_date])
            end_date = Date.parse(bookings_params[:end_date])
            days = (end_date - start_date).to_i + 1

            @booking = current_user.bookings.build(bookings_params)
            @booking.foodtruck = foodtruck
            @booking.price = foodtruck.price
            @booking.total = foodtruck.price * days
            @booking.save

            flash[:notice] = "Booked Successfully!"
        end
        redirect_to foodtruck
    end

    private
        def bookings_params
            params.require(:booking).permit(:start_date, :end_date)
        end
end

