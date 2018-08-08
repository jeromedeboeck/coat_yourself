class CoatsController < ApplicationController

  def index
    @coats = Coat.all
    if !params[:name].blank?
      @coats = @coats.where("name LIKE ?", "%#{params[:name].downcase}%")
    end
    if !params[:size].blank?
      @coats = @coats.where(size: params[:size])
    end
    if !params[:price].blank?
      @coats = @coats.where("price <= ?", params[:price])
    end
  end

  def show
    @coat = Coat.find(params[:id])
    @booking = Booking.new
  end

  def new
  end

  def create
  end
end
