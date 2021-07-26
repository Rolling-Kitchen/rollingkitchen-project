class BookingsController < ApplicationController
  before_action :authenticate_user!


#   def create
#     @booking = Booking.new(booking_params)
#     # @booking.user = current_user
#     authorize @booking
#     if @booking.save
#         flash[:success] = "Object successfully created"
#         redirect_to root_path
#     else
#         flash[:error] = "Something went wrong"
#     end
# end


def create
    @booking = Booking.new(booking_params)    
    @booking.foodtruck = Foodtruck.find(params[:foodtruck_id])
    @booking.user = current_user
    @foodtruck = Foodtruck.find(params[:foodtruck_id])
    @booking.status = "Waiting for a response"

    authorize @foodtruck
    p "here is the booking info"
    p @booking
    if @booking.save
      redirect_to bookings_path
    else
        puts "does not save"
        redirect_to foodtruck_path(@foodtruck)
    end
end


    def index
        @bookings = policy_scope(Booking).where(user_id: current_user.id)
    end

    private
        def booking_params
            params.require(:booking).permit(:status, :start_time, :end_time, :foodtruck_id, :user_id, :created_at, :updated_at, :event_name, :event_details, :expected_attendees, :event_location  )
        end
end