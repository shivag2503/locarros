class CarsController < ApplicationController

  def show
    @cars = current_user.cars
  end

  def index
    @cars = Car.all
    @users = User.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(params)
  end

  def destroy
  end
end
