class CarsController < ApplicationController

  before_action :set_car, only: [:show, :update]

  def index
    @cars = User.cars.all
  end

  def show
  end

  def create
    @car = User.first.cars.create(car_params)
    head :bad_request unless @car
    head :ok
  end

  def update
  end

  private

  def set_car
    @car = User.first.cars.first
    head :not_found unless @car
  end

  def car_params
    params.permit(:brand, :model, :color, :plate)
  end
end
