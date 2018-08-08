class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @coats = @category.coats
    # Add search logic
    if !params[:name].blank?
      @coats = @coats.where("name LIKE ?", "%#{params[:name]}%")
    end
    if !params[:size].blank?
      @coats = @coats.where(size: params[:size])
    end
    if !params[:price].blank?
      @coats = @coats.where("price <= ?", params[:price])
    end
  end

  def index
    @categories = Category.all
  end
end
