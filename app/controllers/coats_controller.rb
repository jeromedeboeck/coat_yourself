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
    @coat = Coat.new
  end

  def create
    @coat = Coat.new(coat_params)
    @coat.user = current_user
    if @coat.save
      redirect_to coat_path(@coat)
    else
      render 'new'
    end
  end

  private

  def coat_params
    params.require(:coat).permit(:name, :price, :size, :category_id, :photo)
  end
end


