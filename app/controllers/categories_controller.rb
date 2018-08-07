class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @coats = @category.coats
  end
  
  def index
    @categories = Category.all
  end
end
