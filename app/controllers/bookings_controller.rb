class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @coat = Coat.find(params[:coat_id])
  end

  def create
    @coat = Coat.find(params[:coat_id])
    @booking = Booking.create(booking_params)
    @booking.coat = @coat
    @booking.user = current_user
    if @booking.save
      redirect_to coat_booking_path(@coat, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @coat = Coat.find(params[:coat_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :coat_id, :user_id)
  end

end
