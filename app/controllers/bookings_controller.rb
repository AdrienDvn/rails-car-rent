class BookingsController < ApplicationController
  def index
    # @bookings = current_user.bookings
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new

  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @car = Car.find(params[:car_id])
    @booking.car = @car
    # @booking.user = current_user
    @booking.save
    redirect_to new_car_booking_path(@booking)
  end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_params)
  #   @booking.save
  #   redirect_to new_car_booking_path(@booking)
  # end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :car_id, :user_id)
  end
end
