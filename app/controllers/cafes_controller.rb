class CafesController < ApplicationController
  def index
  end


  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_cafe
    @cafe = Cafe.find(params[:id])
  end

  def cafe_params

  end


end
