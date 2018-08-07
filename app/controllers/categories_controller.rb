class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @coats = @category.coats
  end
end

