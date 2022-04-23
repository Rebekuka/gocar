class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      flash.alert = "Votre réservation a bien été enregistrée"
      redirect_to root_path
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
    params.require(:booking).permit(:duration, :endduration, :user_id, :car_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
