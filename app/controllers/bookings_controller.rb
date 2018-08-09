class BookingsController < ApplicationController
  def index
    @user  = current_user
    @bookings = Booking.where(user: @user)
    @categories = []
    @bookings.each do |booking|
      @categories << booking.coat.category
    end
    @categories = @categories.uniq
  end

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
      redirect_to bookings_path
    else
      render :new
    end
  end

  def show
    @user  = current_user
    @bookings = Booking.where(user: @user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :coat_id, :user_id)
  end

end
