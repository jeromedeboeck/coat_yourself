class CoatsController < ApplicationController

  def show
    @coat = Coat.find(params[:id])
  end

  def new
  end

  def create
  end
end
