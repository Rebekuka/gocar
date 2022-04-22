class BookingsController < ApplicationController
  class BookingsController < ApplicationController

    def index
      @bookings = Booking.all
    end

    def new
      @booking = Bookging.new
    end

    def create
      @booking = Booking.new(booking_params)
      @booking.car = @car

      if @booking.save
        redirect_to root_path(@car)
      else
        render :new
      end
    end

    def destroy
      @booking.destroy
      redirect_to root_path(@booking.car)
    end

    private

    def booking_params
      params.require(:booking).permit(:duration, :user_id, :car_id)
    end

    def set_booking
      @booking = Booking.find(params[:id])
    end

    def set_car
      @car = Car.find(params[:car_id])
    end
  end
end
