class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    Car.create(car_params)
    redirect_to cars_path
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to cars_path
  end

  def destroy
  end

  private

  def car_params
    params.require(:car).(:brand, :price)
  end
end
